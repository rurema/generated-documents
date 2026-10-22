# RUBY_REF_EDGE

### size_t RUBY_REF_EDGE(type, member)

構造体 `type` のメンバ `member` を、`VALUE` への参照(edge)として宣言します。
[RUBY_REFERENCES](../function/RUBY_REFERENCES.md) のブロックの中で使います。
値は構造体の先頭から `member` までのオフセットです。

使い方は [RUBY_REFERENCES](../function/RUBY_REFERENCES.md) を参照してください。

- **param** `type` -- 構造体の型です。
- **param** `member` -- 構造体の中の `VALUE` を持つメンバの名前です。
- **return** -- `member` のオフセットです。
