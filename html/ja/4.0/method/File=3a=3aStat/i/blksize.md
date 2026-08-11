# File::Stat#blksize

### def blksize -> Integer

望ましいI/Oのブロックサイズを返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.blksize # => nil
```
