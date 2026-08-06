# WEBrick::HTTPServlet::AbstractServlet.get_instance

### def WEBrick::HTTPServlet::AbstractServlet.get_instance(server, *options)    -> WEBrick::HTTPServlet::AbstractServlet

new(server, *options) を呼び出してサーブレットを生成して返します。
[WEBrick::HTTPServer](../../../class/WEBrick=3a=3aHTTPServer.md) オブジェクトは実際にはこの get_instance メソッドを呼び出してサーブレットを生成します。

特に理由が無い限り AbstractServlet のサブクラスがこのメソッドを再定義する必要はありません。

- **param** `server` -- [WEBrick::HTTPServer#mount](../../../method/WEBrick=3a=3aHTTPServer/i/mount.md) 第3引数以降に指定された値がそのまま与えられます。

- **param** `options` -- [WEBrick::HTTPServer#mount](../../../method/WEBrick=3a=3aHTTPServer/i/mount.md) 第3引数以降に指定された値がそのまま与えられます。
