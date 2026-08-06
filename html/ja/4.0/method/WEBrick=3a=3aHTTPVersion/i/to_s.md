# WEBrick::HTTPVersion#to_s

### def to_s    -> String

自身を文字列に変換して返します。

```ruby
require 'webrick'
v = WEBrick::HTTPVersion.new('1.1')
p v.to_s                            #=> "1.1"
```
