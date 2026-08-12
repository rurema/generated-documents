# WEBrick::HTTPServer#mount_proc

### def mount_proc(dir, proc)             -> ()
### def mount_proc(dir){|req, res| ...}   -> ()

サーバ上のディレクトリ dir にリクエストを処理する [Proc](../../../class/Proc.md) オブジェクト proc を対応させます。

- **param** `dir` -- ディレクトリをあらわす文字列を指定します。

- **param** `proc` -- リクエストを処理する [Proc](../../../class/Proc.md) オブジェクトを指定します。
            [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトと [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md)
            オブジェクトを引数として proc.call(request, response) の引数の順で呼び出されます。

- **raise** `WEBrick::HTTPServerError` -- proc も指定されずブロックも与えられない場合に発生します。
