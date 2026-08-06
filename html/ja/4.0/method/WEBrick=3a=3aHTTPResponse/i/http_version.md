# WEBrick::HTTPResponse#http_version

### def http_version    -> WEBrick::HTTPVersion

レスポンスの HTTP のバージョンを表す [WEBrick::HTTPVersion](../../../class/WEBrick=3a=3aHTTPVersion.md) オブジェクトを返します。

```ruby
require 'webrick'
res = WEBrick::HTTPResponse.new( { :HTTPVersion => "1.1" } )
p res.http_version.class                                        #=> WEBrick::HTTPVersion
p res.http_version.to_s                                         #=> "1.1"
```
