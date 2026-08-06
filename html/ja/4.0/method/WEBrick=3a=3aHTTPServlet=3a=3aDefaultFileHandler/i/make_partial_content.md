# WEBrick::HTTPServlet::DefaultFileHandler#make_partial_content

### def make_partial_content(request, response, filename, filesize)

部分的 GET リクエストのためのレスポンスを作成します。

- **param** `request` -- クライアントからのリクエストを表す [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトです。

- **param** `response` -- クライアントへのレスポンスを表す [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。

- **param** `filename` -- ファイル名を指定します。

- **param** `filesize` -- ファイルサイズを指定します。

- **raise** `WEBrick::HTTPStatus::BadRequest` -- リクエストが不正である場合に発生します。

- **raise** `WEBrick::HTTPStatus::RequestRangeNotSatisfiable` -- レスポンスボディが空になる場合などに発生します。
