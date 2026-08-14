# Float#nan?

### def nan? -> bool

`self` が NaN(Not a number)のとき `true` を返し、そうでないとき `false` を返します。

```ruby title="例"
p Float::NAN.nan?      # => true
p Float::INFINITY.nan? # => false
p 0.0.nan?             # => false
```
