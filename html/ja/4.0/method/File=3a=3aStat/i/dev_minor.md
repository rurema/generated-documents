# File::Stat#dev_minor

### def dev_minor -> Integer

dev の minor 番号部を返します。

```ruby
fs = File::Stat.new($0)
p fs.dev_minor
#例
# => nil
```
