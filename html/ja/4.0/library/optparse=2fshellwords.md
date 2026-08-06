# library optparse/shellwords

[OptionParser#on](../method/OptionParser/i/on.md) で使用可能な引数に [Shellwords](../class/Shellwords.md)
追加されます。
オプションの引数は [Shellwords?.shellwords](../method/Shellwords/m/shellwords.md) によって配列に変換されてから、
[OptionParser#on](../method/OptionParser/i/on.md) のブロックに渡されます。

```ruby
require 'optparse/shellwords'
opts = OptionParser.new

opts.on("-s VAL", Shellwords){|a|
  p a #=> ["hoge", "foo", "bar"]
}
opts.parse!

# ruby command -s hoge\ foo\ bar
```
