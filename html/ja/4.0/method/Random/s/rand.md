# Random.rand

### def Random.rand -> Float
### def Random.rand(max) -> Integer | Float
### def Random.rand(range) -> Integer | Float

擬似乱数を発生させます。

[Random#rand](../../../method/Random/i/rand.md) を参照してください。

擬似乱数生成器が [Kernel?.rand](../../../method/Kernel/m/rand.md) と共通なため [Kernel?.srand](../../../method/Kernel/m/srand.md) などの影響を受けます。

- **param** `max` --   乱数値の上限を正の整数または実数で指定します。
- **param** `range` -- 発生させる乱数値の範囲を [Range](../../../class/Range.md) オブジェクトで指定します。
             range の境界は数値でなければなりません。

- **raise** `Errno::EDOM` -- rand(1..Float::INFINITY) などのように範囲に問題があるときに発生します。
- **raise** `ArgumentError` -- 引数の数が0または1では無い時、引数に負の数値を与えた時や (1..0) のような値が存在しない範囲を渡した時に発生します。

```ruby title="例"
srand 1234 # 乱数の種を設定する。
p Random.rand(10.0)  # => 1.9151945037889229  (0.0 以上 10.0 未満の実数)
p rand(10.0)       # => 6                   (rand(10) と同じ)
```

- **SEE** [Random.srand](../../../method/Random/s/srand.md), [Random#rand](../../../method/Random/i/rand.md)
