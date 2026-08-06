# Prism::Source#code_units_offset

### def code_units_offset(byte_offset, encoding) -> Integer

byte_offset に対応する、指定エンコーディングのコード単位でのオフセットを返します。UTF-16 のコード単位で位置をやりとりする
LSP(Language Server Protocol)などとの連携向けです。

- **param** `byte_offset` -- バイトオフセット
- **param** `encoding` -- コード単位の基準となるエンコーディング
