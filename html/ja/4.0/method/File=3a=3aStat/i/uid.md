# File::Stat#uid

### def uid -> Integer

オーナーのユーザIDを返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.uid    #=> 0
```
