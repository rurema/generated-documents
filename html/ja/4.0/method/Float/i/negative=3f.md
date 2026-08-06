# Float#negative?

### def negative? -> bool

`self` が 0 未満の場合に `true` を返します。そうでない場合に `false` を返します。

```ruby title="例"
p -0.1.negative? # => true
p 0.0.negative?  # => false
p 0.1.negative?  # => false
```

- **SEE** [Float#positive?](../../../method/Float/i/positive=3f.md)
