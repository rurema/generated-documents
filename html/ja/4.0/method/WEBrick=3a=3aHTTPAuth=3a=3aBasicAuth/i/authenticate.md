# WEBrick::HTTPAuth::BasicAuth#authenticate

### def authenticate(request, response) -> bool

クライアントから送られてきたユーザ名とパスワードを認証します。
認証に失敗した場合は challenge を呼びます。

- **param** `request` -- [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) のインスタンスを指定します。

- **param** `response` -- [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) のインスタンスを指定します。

- **raise** `WEBrick::HTTPStatus::Unauthorized` -- 認証に失敗した場合に発生します。
