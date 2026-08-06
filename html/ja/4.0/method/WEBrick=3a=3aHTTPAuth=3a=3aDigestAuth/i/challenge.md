# WEBrick::HTTPAuth::DigestAuth#challenge

### def challenge(request, response, stale = false)

クライアントにパスワードを要求するためにレスポンスに WWW-Authenticate ヘッダを設定し、例外 WEBrick::HTTPStatus::Unauthorized を発生させます。

- **param** `request` -- [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) のインスタンスを指定します。

- **param** `response` -- [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) のインスタンスを指定します。

- **raise** `WEBrick::HTTPStatus::Unauthorized` -- このメソッドを呼ぶと必ず発生します。
