# File::Stat#rdev

### def rdev -> Integer

デバイスタイプ(スペシャルファイルのみ)を返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.rdev     # => 2
```
