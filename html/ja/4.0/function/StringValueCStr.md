# StringValueCStr

### char * StringValueCStr(VALUE v)

`v` を [String](../class/String.md) に変換し、その実体の C の文字列へのポインタを返します。
[StringValuePtr](../function/StringValuePtr.md) と同じですが、内容が C の文字列として使えるかも検査します。
Ruby は C より広い範囲の内容を文字列として受け付けるため、この検査が必要になります。
返り値は NUL で終端されています。

- **param** `v` -- 変換する Ruby のオブジェクトです。呼び出し後は [String](../class/String.md) になります。
- **return** -- `v` の実体の C の文字列です。
- **raise** `TypeError` -- 暗黙の型変換が定義されていないとき。
- **raise** `ArgumentError` -- 内容が C の文字列として使えないとき。
