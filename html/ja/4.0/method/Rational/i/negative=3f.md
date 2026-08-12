# Rational#negative?

### def negative? -> bool
{: since="2.3.0"}

`self` が負の数なら `true` を、そうでないなら `false` を返します。

```ruby title="例"
p Rational(1, 2).negative?  # => false
p Rational(-1, 2).negative? # => true
```

- **SEE** [Rational#positive?](../../../method/Rational/i/positive=3f.md)
