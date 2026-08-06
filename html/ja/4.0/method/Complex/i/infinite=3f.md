# Complex#infinite?

### def infinite? -> nil | 1

実部と虚部のどちらも無限大ではない場合に nil を、そうでない場合に 1 を返します。

```ruby title="例"
p (1+1i).infinite?                 # => nil
p (Float::INFINITY + 1i).infinite? # => 1
```

- **SEE** [Complex#finite?](../../../method/Complex/i/finite=3f.md)
