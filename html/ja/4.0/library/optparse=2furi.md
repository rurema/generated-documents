# library optparse/uri

[OptionParser#on](../method/OptionParser/i/on.md) で使用可能なクラスに [URI](../class/URI.md) が追加されます。
オプションの引数は [URI](../class/URI.md) クラスのインスタンスに変換されてから、
[OptionParser#on](../method/OptionParser/i/on.md) のブロックに渡されます。

```ruby
require 'optparse/uri'
opts = OptionParser.new

opts.on("-u URI", URI){|u|
  p u # => #<URI::HTTP:0x201267d4 URL:http://www.example.com>
}
opts.parse!

# ruby command -u http://www.example.com
```
