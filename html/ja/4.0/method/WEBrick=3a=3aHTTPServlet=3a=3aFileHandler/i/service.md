# WEBrick::HTTPServlet::FileHandler#service

### def service(request, response) -> ()

リクエストメソッドに応じて自身の do_* メソッドを呼び出します。

- **param** `request` -- クライアントからのリクエストを表す [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトです。

- **param** `response` -- クライアントへのレスポンスを表す [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。

- **raise** `WEBrick::HTTPStatus::NotFound` -- 対象となるパスが見つからなかった場合に発生します。
