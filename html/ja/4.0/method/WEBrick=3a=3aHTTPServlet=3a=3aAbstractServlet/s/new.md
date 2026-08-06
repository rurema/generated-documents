# WEBrick::HTTPServlet::AbstractServlet.new

### def WEBrick::HTTPServlet::AbstractServlet.new(server, *options)    -> WEBrick::HTTPServlet::AbstractServlet

サーブレットを生成して返します。
[WEBrick::HTTPServer](../../../class/WEBrick=3a=3aHTTPServer.md) オブジェクトは server に自身を指定してサーブレットを生成します。

- **param** `server` -- サーブレットを生成する WEBrick::HTTPServer オブジェクトを指定します。

- **param** `options` -- [WEBrick::HTTPServer#mount](../../../method/WEBrick=3a=3aHTTPServer/i/mount.md) 第3引数以降に指定された値がそのまま与えられます。
