# Rational#positive?

### def positive? -> bool
{: since="2.3.0"}

`self` が正の数なら `true` を、そうでないなら `false` を返します。

```ruby title="例"
p Rational(1, 2).positive?  # => true
p Rational(-1, 2).positive? # => false
```

- **SEE** [Rational#negative?](../../../method/Rational/i/negative=3f.md)
