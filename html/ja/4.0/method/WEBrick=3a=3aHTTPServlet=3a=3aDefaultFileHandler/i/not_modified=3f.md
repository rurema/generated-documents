# WEBrick::HTTPServlet::DefaultFileHandler#not_modified?

### def not_modified?(request, response, mtime, etag) -> bool

自身に関連付けられたファイルが更新されていなければ、真を返します。
そうでない場合は、偽を返します。


- **param** `request` -- クライアントからのリクエストを表す [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトです。

- **param** `response` -- クライアントへのレスポンスを表す [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。

- **param** `mtime` -- 自身に関連付けられたファイルの最終修正時刻を指定します。

- **param** `etag` -- ETag の値を指定します。
