# Array#shuffle

### def shuffle -> Array
### def shuffle(random: Random) -> Array

配列の要素をランダムシャッフルして、その結果を配列として返します。

引数に [Random](../../../class/Random.md) オブジェクトを渡すことでそのオブジェクトが生成する擬似乱数列を用いることができます。

```ruby title="例"
a = [ 1, 2, 3 ]           #=> [1, 2, 3]
p a.shuffle               #=> [2, 3, 1]
rng = Random.new
rng2 = rng.dup # RNGを複製
# 以下の2つは同じ結果を返す
[1,2,3].shuffle(random: rng)
[1,2,3].shuffle(random: rng2)
```

- **SEE** [Array#shuffle!](../../../method/Array/i/shuffle=21.md)
