# Prism::Location#start_code_units_offset

### def start_code_units_offset(encoding = Encoding::UTF_16LE) -> Integer

範囲の開始位置の、指定エンコーディングのコード単位でのオフセットを返します。UTF-16 のコード単位で位置をやりとりする
LSP(Language Server Protocol)などとの連携向けです。

- **param** `encoding` -- コード単位の基準となるエンコーディング
