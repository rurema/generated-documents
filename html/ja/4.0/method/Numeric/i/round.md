# Numeric#round

### def round   -> Integer

自身ともっとも近い整数を返します。

中央値 0.5, -0.5 はそれぞれ 1,-1 に切り上げされます。いわゆる四捨五入ですが、偶数丸めではありません。

```ruby title="例"
p 1.round      #=> 1
p 1.2.round    #=> 1
p (-1.2).round #=> -1
p (-1.5).round #=> -2
```

- **SEE** [Numeric#ceil](../../../method/Numeric/i/ceil.md), [Numeric#floor](../../../method/Numeric/i/floor.md), [Numeric#truncate](../../../method/Numeric/i/truncate.md)
