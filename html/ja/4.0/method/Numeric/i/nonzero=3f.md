# Numeric#nonzero?

### def nonzero?    -> self | nil

`self` が非ゼロなら `self` を、ゼロなら `nil` を返します。

```ruby title="例"
p 10.nonzero?   # => 10
p 0.nonzero?    # => nil
p 0.0.nonzero?  # => nil
p 0r.nonzero?   # => nil
```

非ゼロのときに `self` を返すので、`self` がゼロのときに他の処理をさせたければ以下のように書けます。

```ruby title="例"
a = %w[z Bb bB bb BB a aA Aa AA A]
b = a.sort { |a, b| (a.downcase <=> b.downcase).nonzero? || a <=> b }
p b # => ["A", "a", "AA", "Aa", "aA", "BB", "Bb", "bB", "bb", "z"]
```

- **SEE** [Numeric#zero?](../../../method/Numeric/i/zero=3f.md)
