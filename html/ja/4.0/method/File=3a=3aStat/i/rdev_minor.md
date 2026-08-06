# File::Stat#rdev_minor

### def rdev_minor -> Integer

rdev の minor 番号部を返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.rdev_minor #=> nil
```
