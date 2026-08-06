# File::Stat#size

### def size -> Integer

ファイルサイズ(バイト単位)を返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.size    #=> 1548
```
