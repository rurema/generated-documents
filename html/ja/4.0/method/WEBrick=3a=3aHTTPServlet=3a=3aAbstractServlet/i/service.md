# WEBrick::HTTPServlet::AbstractServlet#service

### def service(request, response)    -> ()

指定された [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクト request の [WEBrick::HTTPRequest#request_method](../../../method/WEBrick=3a=3aHTTPRequest/i/request_method.md) に応じて、自身の do_GET, do_HEAD, do_POST, do_OPTIONS... いずれかのメソッドを request と response を引数として呼びます。

[WEBrick::HTTPServer](../../../class/WEBrick=3a=3aHTTPServer.md) オブジェクトはクライアントからのリクエストがあるたびにサーブレットオブジェクトを生成し service メソッドを呼びます。

特に理由が無い限り AbstractServlet のサブクラスがこのメソッドを定義する必要はありません。

- **param** `request` -- クライアントからのリクエストを表す [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトです。

- **param** `response` -- クライアントへのレスポンスを表す [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。

- **raise** `WEBrick::HTTPStatus::MethodNotAllowed` -- 
       指定された [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクト  req が自身に定義されていない
       HTTP のメソッドであった場合発生します。
