# WEBrick::HTTPAuth::BasicAuth#challenge

### def challenge(request, response) -> ()

クライアントにパスワードを要求するためにレスポンスに WWW-Authenticate ヘッダを設定し、例外 WEBrick::HTTPStatus::Unauthorized を投げます。

- **raise** `WEBrick::HTTPStatus::Unauthorized` -- このメソッドを呼ぶと必ず発生します。
