# File::Stat#readable?

### def readable? -> bool

読み込み可能な時に真を返します。

```ruby
p File::Stat.new($0).readable? #=> true
```
