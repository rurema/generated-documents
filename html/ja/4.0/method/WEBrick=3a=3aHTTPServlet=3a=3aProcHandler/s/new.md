# WEBrick::HTTPServlet::ProcHandler.new

### def WEBrick::HTTPServlet::ProcHandler.new(proc) -> WEBrick::HTTPServlet::ProcHandler

自身を初期化します。

- **param** `proc` -- [Proc](../../../class/Proc.md) オブジェクトを与えます。クライアントからのリクエストがあった時、
            proc.call(request, response) のように呼び出されます。
            request, response はそれぞれ [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトと
            [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。
