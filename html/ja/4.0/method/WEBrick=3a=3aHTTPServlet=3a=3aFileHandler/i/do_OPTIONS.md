# WEBrick::HTTPServlet::FileHandler#do_OPTIONS

### def do_OPTIONS(request, response) -> ()

OPTIONS リクエストを処理します。

- **param** `request` -- クライアントからのリクエストを表す [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトです。

- **param** `response` -- クライアントへのレスポンスを表す [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。

- **raise** `WEBrick::HTTPStatus::NotFound` -- 対象となるパスが見つからなかった場合に発生します。
