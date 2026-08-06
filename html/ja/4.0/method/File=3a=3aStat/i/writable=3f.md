# File::Stat#writable?

### def writable? -> bool

書き込み可能な時に真を返します。

```ruby
p File::Stat.new($0).writable? #=> true
```
