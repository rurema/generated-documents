# RUBY_REFERENCES

### void RUBY_REFERENCES(ref_list_name)

`ref_list_name` を、構造体が持つ `VALUE` への参照の一覧として定義します。
構造体のメンバへのオフセットを並べた静的な配列になります。
一覧は `RUBY_REF_END` で終わらせます。

構造体の参照がこの一覧に書ける単純なものだけなら、`dmark` や `dcompact` を定義しなくても、GC が参照のマークとコンパクションに対応できます。
一覧は `RUBY_REFS_LIST_PTR` で `dmark` の欄に指定し、`rb_data_type_t` の `flags` に `RUBY_TYPED_DECL_MARKING` を指定します。

```c title="使用例"
struct dir_data {
    DIR *dir;
    const VALUE path;
    rb_encoding *enc;
};

RUBY_REFERENCES(dir_refs) = {
    RUBY_REF_EDGE(struct dir_data, path),
    RUBY_REF_END
};

static const rb_data_type_t dir_data_type = {
    "dir",
    {RUBY_REFS_LIST_PTR(dir_refs), dir_free, dir_memsize,},
    0, NULL, RUBY_TYPED_WB_PROTECTED | RUBY_TYPED_FREE_IMMEDIATELY | RUBY_TYPED_DECL_MARKING
};
```

- **param** `ref_list_name` -- 定義する参照の一覧の名前です。
