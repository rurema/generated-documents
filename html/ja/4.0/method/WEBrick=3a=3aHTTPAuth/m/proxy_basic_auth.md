# WEBrick::HTTPAuth?.proxy_basic_auth

### module_function def proxy_basic_auth(req, res, realm){|user, pass| ... }     -> nil

プロクシの Basic 認証行うためのメソッドです。

与えられたブロックは user, pass をブロックパラメータとして渡されて評価されます。
ブロックの評価結果が真である場合、認証が成功したことになります。
ブロックの評価結果が偽である場合、認証は失敗したことになり、例外が発生します。

- **param** `req` -- クライアントからのリクエストを表す [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトを指定します。

- **param** `res` -- [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトを指定します。

- **param** `realm` -- 認証のレルムを文字列で指定します。

- **raise** `WEBrick::HTTPStatus::ProxyAuthenticationRequired` -- 認証に失敗した場合に発生します。
