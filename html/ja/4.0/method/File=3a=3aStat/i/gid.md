# File::Stat#gid

### def gid -> Integer

オーナーのグループIDを返します。

```ruby
fs = File::Stat.new($0)
#例
p fs.gid      #=> 0
```
