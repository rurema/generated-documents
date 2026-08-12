# class WEBrick::HTTPServlet::AbstractServlet < Object

サーブレットの抽象クラスです。実装は AbstractServlet のサブクラスで行います。

サーブレットは以下のように使われます。[WEBrick::HTTPServlet::CGIHandler](../class/WEBrick=3a=3aHTTPServlet=3a=3aCGIHandler.md) は
[webrick/httpservlet/cgihandler](../library/webrick=2fhttpservlet=2fcgihandler.md) で提供されているサーブレットです。
CGIHandler は AbstractServlet のサブクラスです。

```ruby
require 'webrick'
srv = WEBrick::HTTPServer.new({ :DocumentRoot => './',
                                :BindAddress => '127.0.0.1',
                                :Port => 20080})
srv.mount('/view.cgi', WEBrick::HTTPServlet::CGIHandler, 'view.rb')
trap("INT"){ srv.shutdown }
srv.start
```

上のスクリプトでは以下のような流れで view.rb は実行されます。

1. サーバのパス /view.cgi と CGIHandler がマウントにより結びつけられます。
2. パス /view.cgi にアクセスがあるたびにサーバ(WEBrick::HTTPServer オブジェクト)は 'view.rb'
     を引数として CGIHandler オブジェクトを生成します。
3. サーバはリクエストオブジェクトを引数として CGIHandler#service メソッドを呼びます。
4. CGIHandler オブジェクトは view.rb を CGI スクリプトとして実行します。

このように [WEBrick](../class/WEBrick.md) では Web サーバの機能の大部分がサーブレットの形で提供されています。
またサーブレットを作成することにより新たな機能を Web サーバに追加することもできます。

## Class Methods

- [get_instance](../method/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet/s/get_instance.md)
- [new](../method/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet/s/new.md)

## Instance Methods

- [do_DELETE](../method/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet/i/do_DELETE.md)
- [do_GET](../method/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet/i/do_GET.md)
- [do_HEAD](../method/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet/i/do_HEAD.md)
- [do_OPTIONS](../method/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet/i/do_OPTIONS.md)
- [do_POST](../method/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet/i/do_POST.md)
- [do_PUT](../method/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet/i/do_PUT.md)
- [service](../method/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet/i/service.md)
