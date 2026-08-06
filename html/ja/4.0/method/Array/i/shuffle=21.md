# Array#shuffle!

### def shuffle!        -> self
### def shuffle!(random: Random) -> self

配列を破壊的にランダムシャッフルします。

- **param** `random` -- 乱数生成器(主に [Random](../../../class/Random.md) オブジェクト)を指定します。
              選択する要素のインデックスを返す rand メソッドに応答する
              オブジェクトであれば指定する事ができます。rand メソッド
              の引数には [Random#rand](../../../method/Random/i/rand.md)(max) のように選択可能なイン
              デックスの最大値が指定されます。
              [Kernel?.rand](../../../method/Kernel/m/rand.md)、[Random](../../../class/Random.md) を使用しないオブジェク
              トを指定した場合、[Kernel?.srand](../../../method/Kernel/m/srand.md)の指定に影響されま
              せん。

```ruby title="例"
a = [ 1, 2, 3 ]           #=> [1, 2, 3]
p a.shuffle!              #=> [2, 3, 1]
p a                       #=> [2, 3, 1]
```

- **SEE** [Array#shuffle](../../../method/Array/i/shuffle.md)
