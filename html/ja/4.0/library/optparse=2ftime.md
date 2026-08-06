# library optparse/time

[OptionParser#on](../method/OptionParser/i/on.md) で使用可能なクラスに [Time](../class/Time.md) が追加されます。
オプションの引数は [Time](../class/Time.md) クラスのインスタンスに変換されてから、
[OptionParser#on](../method/OptionParser/i/on.md) のブロックに渡されます。

```ruby
require 'optparse/time'
opts = OptionParser.new

opts.on("-t TIME", Time){|t|
  p t #=> Sat, Jan 01 2000 00:00:00 +0900
}
opts.parse!

# ruby command -t '2000/01/01 00:00'
```
