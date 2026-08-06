# File::Stat#ino

### def ino -> Integer

i-node 番号を返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.ino      #=> 0
```
