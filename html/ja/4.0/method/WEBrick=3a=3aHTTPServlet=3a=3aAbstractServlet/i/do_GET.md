# WEBrick::HTTPServlet::AbstractServlet#do_GET

### def do_GET(request, response)        -> ()
### def do_HEAD(request, response)       -> ()
### def do_POST(request, response)       -> ()
### def do_PUT(request, response)        -> ()
### def do_DELETE(request, response)     -> ()
### def do_OPTIONS(request, response)    -> ()

自身の service メソッドから HTTP のリクエストに応じて呼ばれるメソッドです。AbstractServlet のサブクラスはこれらのメソッドを適切に実装しなければいけません。返り値は特に規定されていません。

クライアントが使う可能性のある RFC で定義された HTTP のメソッドはすべて実装する必要があります。
クライアントからのリクエストに使われないと分かっているメソッドは実装しなくてもかまいません。
実装されていない HTTP メソッドであった場合、自身の service メソッドが例外を発生させます。

このメソッドが呼ばれた時点では、クライアントからのリクエストに含まれる Entity Body の読み込みはまだ行われていません。[WEBrick::HTTPRequest#query](../../../method/WEBrick=3a=3aHTTPRequest/i/query.md), [WEBrick::HTTPRequest#body](../../../method/WEBrick=3a=3aHTTPRequest/i/body.md) などのメソッドが読ばれた時点で読み込みが行われます。クライアントから巨大なデータが送られてくることを考慮してユーザはプログラミングを行うべきです。

- **param** `request` -- クライアントからのリクエストを表す [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトです。

- **param** `response` -- クライアントへのレスポンスを表す [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。

```ruby title="例"
require 'webrick'
class HogeServlet < WEBrick::HTTPServlet::AbstractServlet 
  def do_GET(req, res)
     res.body = 'hoge'
  end
end

srv = WEBrick::HTTPServer.new({ :DocumentRoot => './',
                                :BindAddress => '127.0.0.1',
                                :Port => 20080})
srv.mount('/', HogeServlet)
trap("INT"){ srv.shutdown }
srv.start
```
