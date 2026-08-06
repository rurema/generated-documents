# File::Stat#blockdev?

### def blockdev? -> bool

ブロックスペシャルファイルの時に真を返します。

```ruby
Dir.glob("/dev/*") {|bd|
  if File::Stat.new(bd).blockdev?
    puts bd
  end
}
#例
#...
#=> /dev/hda1
#=> /dev/hda3
#...
```
