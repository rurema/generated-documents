# WEBrick::HTTPServlet::DefaultFileHandler#do_GET

### def do_GET(request, response) -> ()

GET リクエストを処理します。

- **param** `request` -- クライアントからのリクエストを表す [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトです。

- **param** `response` -- クライアントへのレスポンスを表す [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。

- **raise** `WEBrick::HTTPStatus::NotModified` -- 自身に関連付けられたファイルが変更されていない場合に発生します。

- **raise** `WEBrick::HTTPStatus::PartialContent` -- 部分的 GET リクエストを処理した場合に発生します。
