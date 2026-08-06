# Rational#positive?

### def positive? -> bool
{: since="2.3.0"}

`self` が `0` より大きい場合に `true` を返します。そうでない場合に `false` を返します。

```ruby title="例"
p Rational(1, 2).positive?  # => true
p Rational(-1, 2).positive? # => false
```

- **SEE** [Rational#negative?](../../../method/Rational/i/negative=3f.md)
