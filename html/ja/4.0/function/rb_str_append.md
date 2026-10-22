# rb_str_append

### VALUE rb_str_append(VALUE dst, VALUE src)

文字列 `dst` の末尾に、文字列 `src` を破壊的に追加します。
`src` の内容は、`dst` のエンコーディングに変換されて追加されます。
`dst` は [String](../class/String.md) でなければいけません。

- **param** `dst` -- 追加先の [String](../class/String.md) です。
- **param** `src` -- 追加する文字列です。
- **return** -- 引数の `dst` です。
- **raise** `Encoding::CompatibilityError` -- エンコーディングを混在できないとき。
- **raise** `ArgumentError` -- 結果の文字列が大きすぎるとき。
