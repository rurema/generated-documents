# Numeric#step

### def step(limit, step = 1) {|n| ... }    -> self
### def step(limit, step = 1) -> Enumerator
### def step(limit, step = 1) -> Enumerator::ArithmeticSequence
### def step(by: 1, to: Float::INFINITY) {|n| ... } -> self
### def step(by: 1, to: Float::INFINITY) -> Enumerator
### def step(by: 1, to: Float::INFINITY) -> Enumerator::ArithmeticSequence
### def step(by:, to: -Float::INFINITY) {|n| ... } -> self
### def step(by:, to: -Float::INFINITY) -> Enumerator
### def step(by:, to: -Float::INFINITY) -> Enumerator::ArithmeticSequence

`self` から始め、`step` を足しながら `limit` を越える前までブロックを繰り返します。`step` は負の数も指定できます。また、`limit` や `step` には [Float](../../../class/Float.md) なども指定できます。

[Complex](../../../class/Complex.md) では未定義化されています。

- **param** `limit` -- ループの上限あるいは下限を数値で指定します。`step` に負の数が指定された場合は、下限として解釈されます。

- **param** `step` -- 各ステップの大きさを数値で指定します。負の数を指定することもできます。

- **param** `to` -- 引数 `limit` と同じですが、省略した場合はキーワード引数 `by` が正の数なら `Float::INFINITY` を、負の数なら `-Float::INFINITY` を指定したとみなされます。

- **param** `by` -- 引数 `step` と同じです。

- **return** -- ブロックが与えられたときは `self` を返します。
- **return** -- ブロックが与えられなかったときは [Enumerator](../../../class/Enumerator.md) を返します。
- **return** -- 特に `limit`（または `to`）と `step` の両方が `Numeric` または `nil` のときは [Enumerator::ArithmeticSequence](../../../class/Enumerator=3a=3aArithmeticSequence.md) を返します。

- **raise** `ArgumentError` -- `step` に `0` を指定した場合に発生します。


```ruby title="例"
2.step(5) { |n| p n }
# => 2
#    3
#    4
#    5

1.1.step(1.5, 0.1) { |n| p n }
# => 1.1
#    1.2000000000000002
#    1.3
#    1.4000000000000001
#    1.5

10.step(6, -1) { |n| p n }
# => 10
#    9
#    8
#    7
#    6

3.step(by:2, to:10) { |n| p n }
# => 3
#    5
#    7
#    9
```

注：0.1 は 2 進法の浮動小数点数では正確な表現ができない（2 進法で 0.1 は 0.00011001100.... となる）ので、以下のようなループでは誤差が生じて意図した回数ループしないことがある。`step` はこの誤差を考慮して実装されている。

```ruby title="例"
i = 1.1
while i <= 1.5
  p i
  i += 0.1
end
# => 1.1
#    1.2000000000000002
#    1.3000000000000003
#    1.4000000000000004
# 1.5 が表示されない
```

- **SEE** [Integer#downto](../../../method/Integer/i/downto.md)
