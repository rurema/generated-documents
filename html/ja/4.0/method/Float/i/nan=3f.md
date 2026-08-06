# Float#nan?

### def nan? -> bool

`self` が NaN(Not a number)のとき `true` を返し、そうでないとき `false` を返します。

```ruby title="例"
nan = 0.0/0.0
p nan       # => NaN
p nan.nan?  # => true
```
