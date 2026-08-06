# WEBrick::HTTPResponse#status_line

### def status_line    -> String

HTTP のステータスラインを CR+LF 付き文字列で返します。

```ruby
require 'webrick'
res = WEBrick::HTTPResponse.new( { :HTTPVersion => "1.1" } )
res.status = 404
  
p res.status_line    #=>  "HTTP/1.1 404 Not Found \r\n"
```
