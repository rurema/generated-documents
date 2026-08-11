# WEBrick::HTTPProxyServer.new

### def WEBrick::HTTPProxyServer.new(config, default = WEBrick::Config::HTTP)    -> WEBrick::HTTPProxyServer

プロクシオブジェクトを生成して返します。

- **param** `config` -- 設定を保存したハッシュを指定します。
              設定として有効なハッシュのキーとその値は [WEBrick::HTTPServer.new](../../../method/WEBrick=3a=3aHTTPServer/s/new.md) と同じです。
              それに加えて以下のキーが有効です。

- **`:ProxyAuthProc`**:
  プロクシ認証を行う [Proc](../../../class/Proc.md) オブジェクトを指定します。この proc は
  [WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトと [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトを引数として
  proc.call(req, res) のように呼ばれます。
  認証に失敗した場合 proc は適切な例外を発生させなければいけません。nil を指定した場合すべての接続を受け付けます。デフォルトは nil です。通常は [WEBrick::HTTPAuth::ProxyBasicAuth](../../../class/WEBrick=3a=3aHTTPAuth=3a=3aProxyBasicAuth.md) か
  [WEBrick::HTTPAuth::ProxyDigestAuth](../../../class/WEBrick=3a=3aHTTPAuth=3a=3aProxyDigestAuth.md) を使用します。
  ```ruby
   require 'webrick'
   require 'webrick/httpproxy'
   auth_proc = proc{|req, res|
     unless c = req['proxy-authorization']
       res['Proxy-Authenticate'] = 'Basic realm="WEBrick Proxy"'
       raise WEBrick::HTTPStatus::ProxyAuthenticationRequired
     else
       # 略
     end
   }
   s = WEBrick::HTTPProxyServer.new(ProxyAuthProc: auth_proc, Port: 8080)
  ```
- **`:ProxyContentHandler`**:
  接続先の HTTP サーバからの内容を処理する [Proc](../../../class/Proc.md) オブジェクトを指定します。
  レスポンスの内容を書き換えたりする事が出来ます。[WEBrick::HTTPResponse](../../../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトと
  [WEBrick::HTTPRequest](../../../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトを引数として proc.call(req, res) のように呼ばれます。
  nil を指定した場合なにもしません。デフォルトは nil です。
  ```ruby
   require 'webrick'
   require 'webrick/httpproxy'
   handler = proc{|req, res|
     res.body.gsub!(/です。/, 'でんがな。')
     res.body.gsub!(/ます。/, 'まんがな。')
   }
   s = WEBrick::HTTPProxyServer.new(ProxyContentHandler: handler, Port: 8080)
  ```
- **`:ProxyVia`**:
  true を指定した場合 接続先の HTTP サーバへのリクエストに Via ヘッダを付けます。デフォルトは
  true です。
- **`:ProxyTimeout`**:
  true を指定した場合 接続先の HTTP サーバへのリクエストにタイムアウトを設定します。
  タイムアウトまでの時間は設定できません。
- **`:ProxyURI`**:
  HTTP サーバへの接続にさらに別の Proxy サーバを使う場合にその Proxy の URI
  を [URI](../../../class/URI.md) オブジェクトで指定します。
  ```ruby
    require 'uri'
    require 'webrick/httpproxy'
    u = URI.parse('http://localhost:18080/')
    s = WEBrick::HTTPProxyServer.new(ProxyURI: u, Port: 8080)
  ```

- **param** `default` -- デフォルトは [WEBrick::Config::HTTP](../../../method/WEBrick=3a=3aConfig/c/HTTP.md) です。
