# class Enumerator::Product < Enumerator

複数の [Enumerable](../class/Enumerable.md) なオブジェクトの直積(デカルト積)を列挙するためのクラス。

このクラスのオブジェクトは [Enumerator.product](../method/Enumerator/s/product.md) から作られます。

各要素は、与えたオブジェクトの数と同じ大きさの配列になります。
右側のオブジェクトほど内側のループになり、最後のオブジェクトが最も速く進みます。

```ruby title="例"
e = Enumerator::Product.new(1..2, ["a", "b"])
e.each do |i, s|
  p [i, s]
end
# => [1, "a"]
#    [1, "b"]
#    [2, "a"]
#    [2, "b"]
```

## Class Methods

- [new](../method/Enumerator=3a=3aProduct/s/new.md)

## Instance Methods

- [each](../method/Enumerator=3a=3aProduct/i/each.md)
- [inspect](../method/Enumerator=3a=3aProduct/i/inspect.md)
- [rewind](../method/Enumerator=3a=3aProduct/i/rewind.md)
- [size](../method/Enumerator=3a=3aProduct/i/size.md)
