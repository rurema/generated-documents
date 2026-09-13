# Net::HTTP#ignore_eof

### def ignore_eof -> bool
### def ignore_eof=(bool)

`Content-Length:` ヘッダフィールドが指定されたレスポンスボディを読み込む際に、EOF (End Of File) を無視するかどうかを取得・設定します。

デフォルトは true です。

- **param** `bool` -- EOF を無視するかどうかを真偽値で指定します。
