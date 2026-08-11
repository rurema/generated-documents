# WEBrick::CGI#service

### def service(req, res)     -> ()

指定された [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクト req の [WEBrick::HTTPRequest#request_method](../../../method/WEBrick=3a=3aHTTPRequest/i/request_method.md) に応じて、自身の do_GET, do_HEAD, do_POST, do_OPTIONS... いずれかのメソッドを req と res を引数として呼びます。

特に理由が無い限り [WEBrick::CGI](../../../class/WEBrick=3a=3aCGI.md) のサブクラスがこのメソッドを定義する必要はありません。

- **param** `req` -- クライアントからのリクエストを表す [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトです。

- **param** `res` -- クライアントへのレスポンスを表す [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。

- **raise** `WEBrick::HTTPStatus::MethodNotAllowed` -- 指定された
       [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクト req が自身に定義されていないHTTP のメソッドであった場合発生します。
