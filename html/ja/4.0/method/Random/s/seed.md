# Random.seed

### def Random.seed -> Integer

デフォルトの擬似乱数生成器([Kernel?.rand](../../../method/Kernel/m/rand.md) や [Random.rand](../../../method/Random/s/rand.md) が使うもの)の現在の種を返します。

[Kernel?.srand](../../../method/Kernel/m/srand.md) や [Random.srand](../../../method/Random/s/srand.md) で新しい種を設定するまで、同じ値を返します。

```ruby title="例"
srand(42)
p Random.seed  # => 42
Random.srand(7)
p Random.seed  # => 7
```

- **SEE** [Random#seed](../../../method/Random/i/seed.md), [Random.srand](../../../method/Random/s/srand.md), [Kernel?.srand](../../../method/Kernel/m/srand.md)
