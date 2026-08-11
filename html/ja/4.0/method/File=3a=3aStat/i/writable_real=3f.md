# File::Stat#writable_real?

### def writable_real? -> bool

実ユーザ/実グループによって書き込み可能な時に真を返します。

```ruby
p File::Stat.new($0).writable_real? # => true
```
