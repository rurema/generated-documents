# Random::Formatter#random_number

### def random_number -> Float
{: since="2.3.0"}
### def random_number(max) -> Integer | Float
{: since="2.3.0"}
### def random_number(range) -> Integer | Float
{: since="2.3.0"}

生の乱数から整形した乱数を生成して返します。[Random#rand](../../../method/Random/i/rand.md) とほぼ同じ働きをします。

[Random](../../../class/Random.md) のインスタンスメソッド、および [Random](../../../class/Random.md) と [SecureRandom](../../../class/SecureRandom.md) の特異メソッドとして使用できます。

- **param** `max` -- 生成する数値の上限を整数または浮動小数点数で指定します。
         正の整数を指定した場合は 0 以上 max 未満の整数を、
         正の浮動小数点数を指定した場合は 0.0 以上 max 未満の浮動小数点数を返します。
         省略するか、nil、0、負の数を指定した場合は 0.0 以上 1.0 未満の浮動小数点数を返します。
- **param** `range` -- 生成する数値の範囲を [Range](../../../class/Range.md) で指定します。
         範囲の両端が整数であれば範囲内の整数を、そうでなければ範囲内の浮動小数点数を返します。
         始端が終端より大きいなど空の範囲を指定した場合は 0.0 以上 1.0 未満の浮動小数点数を返します。
- **raise** `ArgumentError` -- 数値にも範囲にも変換できないオブジェクトを指定した場合に発生します。

[Random#rand](../../../method/Random/i/rand.md) とは異なり、負の数や空の範囲を指定してもエラーにはならず、
0.0 以上 1.0 未満の浮動小数点数にフォールバックします。

```ruby title="例"
prng = Random.new
p prng.random_number       # => 0.3881631795458004
p prng.random_number(100)  # => 54
p prng.random_number(1..6) # => 3
```

- **SEE** [Random#rand](../../../method/Random/i/rand.md)
