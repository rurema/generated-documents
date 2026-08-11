# File::Stat#rdev_major

### def rdev_major -> Integer

rdev の major 番号部を返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.rdev_major # => nil
```
