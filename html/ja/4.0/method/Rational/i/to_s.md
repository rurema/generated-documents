# Rational#to_s

### def to_s -> String

`self` を人間が読みやすい形の文字列表現にして返します。

`"3/5"`, `"-17/7"` のように10進数の表記を返します。

- **return** -- 有理数の表記にした文字列を返します。

```ruby title="例"
p Rational(3, 4).to_s  # => "3/4"
p Rational(8).to_s   # => "8/1"
p Rational(-8, 6).to_s # => "-4/3"
p Rational(0.5).to_s # => "1/2"
```

- **SEE** [Rational#inspect](../../../method/Rational/i/inspect.md)
