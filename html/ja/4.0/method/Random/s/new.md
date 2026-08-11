# Random.new

### def Random.new(seed = Random.new_seed) -> Random

メルセンヌ・ツイスタに基づく擬似乱数発生装置オブジェクトを作ります。
引数が省略された場合は、[Random.new_seed](../../../method/Random/s/new_seed.md)の値を使用します。

- **param** `seed` -- 擬似乱数生成器の種を整数で指定します。

```ruby title="例： 種が同じなら同じ乱数列を発生できる。"
prng = Random.new(1234)
p [ prng.rand, prng.rand ] # => [0.1915194503788923, 0.6221087710398319]
p [ prng.rand(10), prng.rand(1000) ]  # => [4, 664]
# 同じ乱数列を発生する。
prng = Random.new(1234)
p [ prng.rand, prng.rand ] # => [0.1915194503788923, 0.6221087710398319]
p [ prng.rand(10), prng.rand(1000) ]  # => [4, 664]
```
