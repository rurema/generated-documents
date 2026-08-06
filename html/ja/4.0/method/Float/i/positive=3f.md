# Float#positive?

### def positive? -> bool

`self` が 0 より大きい場合に `true` を返します。そうでない場合に `false` を返します。

```ruby title="例"
p 0.1.positive? # => true
p 0.0.positive? # => false
p -0.1.positive?  # => false
```

- **SEE** [Float#negative?](../../../method/Float/i/negative=3f.md)
