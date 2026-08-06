# WEBrick::HTTPServer#mount

### def mount(dir, servlet, *options)    -> ()

サーバ上のディレクトリ dir にサーブレット servlet を対応させます。

- **param** `dir` -- ディレクトリをあらわす文字列を指定します。

- **param** `servlet` -- [WEBrick::HTTPServlet::AbstractServlet](../../../class/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet.md) のサブクラスのインスタンスを指定します。

- **param** `options` -- サーブレットのコンストラクタの引数を指定します。

```ruby
require 'webrick'
include WEBrick
srv = HTTPServer.new( { :BindAddress => '127.0.0.1', :Port => 10080 } )
srv.mount('/img', WEBrick::HTTPServlet::FileHandler, '/home/username/images')
```
