# class Numeric < Object

数値を表す抽象クラスです。[Integer](../class/Integer.md) や [Float](../class/Float.md) などの数値クラスは `Numeric` のサブクラスとして実装されています。

演算や比較を行うメソッド（`+`, `-`, `*`, `/`, `<=>`）は `Numeric` のサブクラスで定義されます。`Numeric` で定義されているメソッドは、サブクラスで提供されているメソッド（`+`, `-`, `*`, `/`, `%`）を利用して定義されるものがほとんどです。
つまり `Numeric` で定義されているメソッドは、`Numeric` のサブクラスとして新たに数値クラスを定義したときに、演算メソッド（`+`, `-`, `*`, `/`, `%`, `<=>`, `coerce`）だけを定義すれば、数値クラスのそのほかのメソッドが適切に定義されることを意図して提供されています。

`+@`, `-@` は単項演算子 `+`, `-` を表しメソッド定義などではこの記法を利用します。

効率のため `Numeric` のメソッドと同じメソッドがサブクラスで再定義されている場合があります。

[Numeric#coerce](../method/Numeric/i/coerce.md) メソッドを使うことによって異なる数値クラス間で演算を行うこともできます。

### 数値関連のメソッドが使えるクラス一覧

数値関連のメソッドがどのクラスで使えるかの一覧です。ほとんどのメソッドはサブクラスで再定義されています。これは、効率のためであったり上位抽象クラスで実装を定義できなかったりするためです。

- リンク付きの ○: 使えます。リンク先はそのクラス自身のメソッド項目です
- リンクなしの ○: 使えます。説明は上位クラスの同名メソッドの項目を参照してください
- ―: 使えません


| メソッド | Numeric | Integer | Float | Rational | Complex |
|---:|:---:|:---:|:---:|:---:|:---:|
| `%` | [○](../method/Numeric/i/=25.md) | [○](../method/Integer/i/=25.md) | [○](../method/Float/i/=25.md) | ○ | ― |
| `&` | ― | [○](../method/Integer/i/=26.md) | ― | ― | ― |
| `*` | ― | [○](../method/Integer/i/=2a.md) | [○](../method/Float/i/=2a.md) | [○](../method/Rational/i/=2a.md) | [○](../method/Complex/i/=2a.md) |
| `**` | ― | [○](../method/Integer/i/=2a=2a.md) | [○](../method/Float/i/=2a=2a.md) | [○](../method/Rational/i/=2a=2a.md) | [○](../method/Complex/i/=2a=2a.md) |
| `+` | ― | [○](../method/Integer/i/=2b.md) | [○](../method/Float/i/=2b.md) | [○](../method/Rational/i/=2b.md) | [○](../method/Complex/i/=2b.md) |
| `+@` | [○](../method/Numeric/i/=2b=40.md) | ○ | ○ | ○ | ○ |
| `-` | ― | [○](../method/Integer/i/=2d.md) | [○](../method/Float/i/=2d.md) | [○](../method/Rational/i/=2d.md) | [○](../method/Complex/i/=2d.md) |
| `-@` | [○](../method/Numeric/i/=2d=40.md) | [○](../method/Integer/i/=2d=40.md) | [○](../method/Float/i/=2d=40.md) | [○](../method/Rational/i/=2d=40.md) | [○](../method/Complex/i/=2d=40.md) |
| `/` | ― | [○](../method/Integer/i/=2f.md) | [○](../method/Float/i/=2f.md) | [○](../method/Rational/i/=2f.md) | [○](../method/Complex/i/=2f.md) |
| `<` | ○ | [○](../method/Integer/i/=3c.md) | [○](../method/Float/i/=3c.md) | ○ | ― |
| `<<` | ― | [○](../method/Integer/i/=3c=3c.md) | ― | ― | ― |
| `<=` | ○ | [○](../method/Integer/i/=3c=3d.md) | [○](../method/Float/i/=3c=3d.md) | ○ | ― |
| `<=>` | [○](../method/Numeric/i/=3c=3d=3e.md) | [○](../method/Integer/i/=3c=3d=3e.md) | [○](../method/Float/i/=3c=3d=3e.md) | [○](../method/Rational/i/=3c=3d=3e.md) | [○](../method/Complex/i/=3c=3d=3e.md) |
| `==` | ○ | [○](../method/Integer/i/=3d=3d.md) | [○](../method/Float/i/=3d=3d.md) | [○](../method/Rational/i/=3d=3d.md) | [○](../method/Complex/i/=3d=3d.md) |
| `===` | ○ | [○](../method/Integer/i/=3d=3d=3d.md) | ○ | ○ | ○ |
| `>` | ○ | [○](../method/Integer/i/=3e.md) | [○](../method/Float/i/=3e.md) | ○ | ― |
| `>=` | ○ | [○](../method/Integer/i/=3e=3d.md) | [○](../method/Float/i/=3e=3d.md) | ○ | ― |
| `>>` | ― | [○](../method/Integer/i/=3e=3e.md) | ― | ― | ― |
| `[]` | ― | [○](../method/Integer/i/=5b=5d.md) | ― | ― | ― |
| `^` | ― | [○](../method/Integer/i/=5e.md) | ― | ― | ― |
| `abs` | [○](../method/Numeric/i/abs.md) | [○](../method/Integer/i/abs.md) | [○](../method/Float/i/abs.md) | [○](../method/Rational/i/abs.md) | [○](../method/Complex/i/abs.md) |
| `abs2` | [○](../method/Numeric/i/abs2.md) | ○ | ○ | ○ | [○](../method/Complex/i/abs2.md) |
| `allbits?` | ― | [○](../method/Integer/i/allbits=3f.md) | ― | ― | ― |
| `angle` | [○](../method/Numeric/i/angle.md) | ○ | [○](../method/Float/i/angle.md) | ○ | [○](../method/Complex/i/angle.md) |
| `anybits?` | ― | [○](../method/Integer/i/anybits=3f.md) | ― | ― | ― |
| `arg` | [○](../method/Numeric/i/arg.md) | ○ | [○](../method/Float/i/arg.md) | ○ | [○](../method/Complex/i/arg.md) |
| `bit_length` | ― | [○](../method/Integer/i/bit_length.md) | ― | ― | ― |
| `ceil` | [○](../method/Numeric/i/ceil.md) | [○](../method/Integer/i/ceil.md) | [○](../method/Float/i/ceil.md) | [○](../method/Rational/i/ceil.md) | ― |
| `ceildiv` | ― | [○](../method/Integer/i/ceildiv.md) | ― | ― | ― |
| `chr` | ― | [○](../method/Integer/i/chr.md) | ― | ― | ― |
| `coerce` | [○](../method/Numeric/i/coerce.md) | ○ | ○ | [○](../method/Rational/i/coerce.md) | [○](../method/Complex/i/coerce.md) |
| `conj` | [○](../method/Numeric/i/conj.md) | ○ | ○ | ○ | [○](../method/Complex/i/conj.md) |
| `conjugate` | [○](../method/Numeric/i/conjugate.md) | ○ | ○ | ○ | [○](../method/Complex/i/conjugate.md) |
| `denominator` | [○](../method/Numeric/i/denominator.md) | [○](../method/Integer/i/denominator.md) | [○](../method/Float/i/denominator.md) | [○](../method/Rational/i/denominator.md) | [○](../method/Complex/i/denominator.md) |
| `digits` | ― | [○](../method/Integer/i/digits.md) | ― | ― | ― |
| `div` | [○](../method/Numeric/i/div.md) | [○](../method/Integer/i/div.md) | ○ | ○ | ― |
| `divmod` | [○](../method/Numeric/i/divmod.md) | [○](../method/Integer/i/divmod.md) | [○](../method/Float/i/divmod.md) | ○ | ― |
| `downto` | ― | [○](../method/Integer/i/downto.md) | ― | ― | ― |
| `eql?` | [○](../method/Numeric/i/eql=3f.md) | ○ | [○](../method/Float/i/eql=3f.md) | ○ | ○ |
| `even?` | ― | [○](../method/Integer/i/even=3f.md) | ― | ― | ― |
| `fdiv` | [○](../method/Numeric/i/fdiv.md) | [○](../method/Integer/i/fdiv.md) | ○ | [○](../method/Rational/i/fdiv.md) | [○](../method/Complex/i/fdiv.md) |
| `finite?` | [○](../method/Numeric/i/finite=3f.md) | ○ | [○](../method/Float/i/finite=3f.md) | ○ | [○](../method/Complex/i/finite=3f.md) |
| `floor` | [○](../method/Numeric/i/floor.md) | [○](../method/Integer/i/floor.md) | [○](../method/Float/i/floor.md) | [○](../method/Rational/i/floor.md) | ― |
| `gcd` | ― | [○](../method/Integer/i/gcd.md) | ― | ― | ― |
| `gcdlcm` | ― | [○](../method/Integer/i/gcdlcm.md) | ― | ― | ― |
| `hash` | ○ | ○ | [○](../method/Float/i/hash.md) | [○](../method/Rational/i/hash.md) | ○ |
| `i` | [○](../method/Numeric/i/i.md) | ○ | ○ | ○ | ― |
| `imag` | [○](../method/Numeric/i/imag.md) | ○ | ○ | ○ | [○](../method/Complex/i/imag.md) |
| `imaginary` | [○](../method/Numeric/i/imaginary.md) | ○ | ○ | ○ | [○](../method/Complex/i/imaginary.md) |
| `infinite?` | [○](../method/Numeric/i/infinite=3f.md) | ○ | [○](../method/Float/i/infinite=3f.md) | ○ | [○](../method/Complex/i/infinite=3f.md) |
| `inspect` | ○ | [○](../method/Integer/i/inspect.md) | [○](../method/Float/i/inspect.md) | [○](../method/Rational/i/inspect.md) | [○](../method/Complex/i/inspect.md) |
| `integer?` | [○](../method/Numeric/i/integer=3f.md) | [○](../method/Integer/i/integer=3f.md) | ○ | ○ | ○ |
| `lcm` | ― | [○](../method/Integer/i/lcm.md) | ― | ― | ― |
| `magnitude` | [○](../method/Numeric/i/magnitude.md) | [○](../method/Integer/i/magnitude.md) | [○](../method/Float/i/magnitude.md) | [○](../method/Rational/i/magnitude.md) | [○](../method/Complex/i/magnitude.md) |
| `modulo` | [○](../method/Numeric/i/modulo.md) | [○](../method/Integer/i/modulo.md) | [○](../method/Float/i/modulo.md) | ○ | ― |
| `nan?` | ― | ― | [○](../method/Float/i/nan=3f.md) | ― | ― |
| `negative?` | [○](../method/Numeric/i/negative=3f.md) | ○ | [○](../method/Float/i/negative=3f.md) | [○](../method/Rational/i/negative=3f.md) | ― |
| `next` | ― | [○](../method/Integer/i/next.md) | ― | ― | ― |
| `next_float` | ― | ― | [○](../method/Float/i/next_float.md) | ― | ― |
| `nobits?` | ― | [○](../method/Integer/i/nobits=3f.md) | ― | ― | ― |
| `nonzero?` | [○](../method/Numeric/i/nonzero=3f.md) | ○ | ○ | ○ | ○ |
| `numerator` | [○](../method/Numeric/i/numerator.md) | [○](../method/Integer/i/numerator.md) | [○](../method/Float/i/numerator.md) | [○](../method/Rational/i/numerator.md) | [○](../method/Complex/i/numerator.md) |
| `odd?` | ― | [○](../method/Integer/i/odd=3f.md) | ― | ― | ― |
| `ord` | ― | [○](../method/Integer/i/ord.md) | ― | ― | ― |
| `phase` | [○](../method/Numeric/i/phase.md) | ○ | [○](../method/Float/i/phase.md) | ○ | [○](../method/Complex/i/phase.md) |
| `polar` | [○](../method/Numeric/i/polar.md) | ○ | ○ | ○ | [○](../method/Complex/i/polar.md) |
| `positive?` | [○](../method/Numeric/i/positive=3f.md) | ○ | [○](../method/Float/i/positive=3f.md) | [○](../method/Rational/i/positive=3f.md) | ― |
| `pow` | ― | [○](../method/Integer/i/pow.md) | ― | ― | ― |
| `pred` | ― | [○](../method/Integer/i/pred.md) | ― | ― | ― |
| `prev_float` | ― | ― | [○](../method/Float/i/prev_float.md) | ― | ― |
| `quo` | [○](../method/Numeric/i/quo.md) | ○ | ○ | [○](../method/Rational/i/quo.md) | [○](../method/Complex/i/quo.md) |
| `rationalize` | ― | [○](../method/Integer/i/rationalize.md) | [○](../method/Float/i/rationalize.md) | [○](../method/Rational/i/rationalize.md) | [○](../method/Complex/i/rationalize.md) |
| `real` | [○](../method/Numeric/i/real.md) | ○ | ○ | ○ | [○](../method/Complex/i/real.md) |
| `real?` | [○](../method/Numeric/i/real=3f.md) | ○ | ○ | ○ | [○](../method/Complex/i/real=3f.md) |
| `rect` | [○](../method/Numeric/i/rect.md) | ○ | ○ | ○ | [○](../method/Complex/i/rect.md) |
| `rectangular` | [○](../method/Numeric/i/rectangular.md) | ○ | ○ | ○ | [○](../method/Complex/i/rectangular.md) |
| `remainder` | [○](../method/Numeric/i/remainder.md) | [○](../method/Integer/i/remainder.md) | ○ | ○ | ― |
| `round` | [○](../method/Numeric/i/round.md) | [○](../method/Integer/i/round.md) | [○](../method/Float/i/round.md) | [○](../method/Rational/i/round.md) | ― |
| `size` | ― | [○](../method/Integer/i/size.md) | ― | ― | ― |
| `step` | [○](../method/Numeric/i/step.md) | ○ | ○ | ○ | ― |
| `succ` | ― | [○](../method/Integer/i/succ.md) | ― | ― | ― |
| `times` | ― | [○](../method/Integer/i/times.md) | ― | ― | ― |
| `to_c` | [○](../method/Numeric/i/to_c.md) | ○ | ○ | ○ | [○](../method/Complex/i/to_c.md) |
| `to_f` | ― | [○](../method/Integer/i/to_f.md) | [○](../method/Float/i/to_f.md) | [○](../method/Rational/i/to_f.md) | [○](../method/Complex/i/to_f.md) |
| `to_i` | ― | [○](../method/Integer/i/to_i.md) | [○](../method/Float/i/to_i.md) | [○](../method/Rational/i/to_i.md) | [○](../method/Complex/i/to_i.md) |
| `to_int` | [○](../method/Numeric/i/to_int.md) | [○](../method/Integer/i/to_int.md) | ○ | ○ | ○ |
| `to_r` | ― | [○](../method/Integer/i/to_r.md) | [○](../method/Float/i/to_r.md) | [○](../method/Rational/i/to_r.md) | [○](../method/Complex/i/to_r.md) |
| `to_s` | ○ | [○](../method/Integer/i/to_s.md) | [○](../method/Float/i/to_s.md) | [○](../method/Rational/i/to_s.md) | [○](../method/Complex/i/to_s.md) |
| `truncate` | [○](../method/Numeric/i/truncate.md) | [○](../method/Integer/i/truncate.md) | [○](../method/Float/i/truncate.md) | [○](../method/Rational/i/truncate.md) | ― |
| `upto` | ― | [○](../method/Integer/i/upto.md) | ― | ― | ― |
| `zero?` | [○](../method/Numeric/i/zero=3f.md) | ○ | [○](../method/Float/i/zero=3f.md) | ○ | ○ |
| `\|` | ― | [○](m:Integer#\|) | ― | ― | ― |
| `~` | ― | [○](../method/Integer/i/=7e.md) | ― | ― | ― |

### 丸めメソッドの動作一覧


[Numeric#ceil](../method/Numeric/i/ceil.md), [Numeric#floor](../method/Numeric/i/floor.md), [Numeric#round](../method/Numeric/i/round.md), [Numeric#truncate](../method/Numeric/i/truncate.md)
のふるまいの違いの表です。左の実数に対して各メソッドを呼ぶと表のような数を返します。

| 実数 | `ceil` | `floor` | `round` | `truncate` |
|-----:|-------:|--------:|--------:|-----------:|
| 1.9  | 2      | 1       | 2       | 1          |
| 1.1  | 2      | 1       | 1       | 1          |
| -1.1 | -1     | -2      | -1      | -1         |
| -1.9 | -1     | -2      | -2      | -1         |

### 丸めメソッドの拡張例

切上げは `ceil`, `floor` を使用して以下のように定義できます。

```ruby title="例"
if n > 0 then
  n.ceil
else
  n.floor
end
```

また、任意桁の切上げ、切捨て、四捨五入を行うメソッドは以下のように定義できます。

```ruby
class Numeric
  def roundup(d=0)
    x = 10**d
    if self > 0
      self.quo(x).ceil * x
    else
      self.quo(x).floor * x
    end
  end

  def rounddown(d=0)
    x = 10**d
    if self < 0
      self.quo(x).ceil * x
    else
      self.quo(x).floor * x
    end
  end

  def roundoff(d=0)
    x = 10**d
    if self < 0
      (self.quo(x) - 0.5).ceil * x
    else
      (self.quo(x) + 0.5).floor * x
    end
  end
end
```


### 除法と商・剰余 {#division}

`Numeric` には除法（除算；割り算；division）に関するメソッドがいくつもありますが、除法にはいくつか種類があるため、全貌が把握しづらくなっています。
この節では除法の種類を説明し、各メソッドがどの除法に基づいているのかが分かるようにします。

まず用語についてですが、割られる数を被除数（dividend）、割る数を除数（divisor）、割った結果を商（quotient）と言います。

除法は大きく2つに分類できます。

そのうちの一つを、ここでは「普通の除法」と呼ぶことにします。
普通の除法は、被除数を `x`、除数を `y`、商を `q` としたとき、`x == q⋅y` となるよう定義された除法です。
7 割る 2 を 3.5 とする除法は、普通の除法です。

普通の除法における商をここでは「普通の商」と呼ぶことにしましょう。

もう一つの除法は、商が必ず整数になるよう定義されるもので、これを「整除法」と言います。
7 割る 2 を 3 余り 1 とする除法は、整除法です。

整除法における商を特に「整商」と言います。

整除法では、被除数を `x`、除数を `y`、商を `q` としたとき、`x` と `q⋅y` が一致する（つまり割り切れる）とは限りません。
その差 `x − q⋅y` を剰余（余り；remainder）と言います。
整除法は商と剰余がセットで決まる除法なので「剰余付き除法」とも呼ばれます。

しばしば「整除法は整数の世界でしか成り立たない」と誤解されていますが、
2.5 メートルの紐から 0.75 メートルの紐が何本取れて何メートルの半端が出るか、という問題を考えれば、被除数や除数が整数でなくてもよいことが分かります。

```ruby title="例: Float の世界の整商と剰余"
p 2.5.divmod(0.75) # => [3, 0.25]
# 2.5 メートルの紐から 0.75 メートルの紐が 3 本取れて 0.25 メートル余る
```

ただし、複素数の世界では整商・剰余は考えないので、[Complex](../class/Complex.md) に `divmod` などのメソッドは定義されていません。

以下では、まず普通の除法に基づくメソッドについて述べます。

普通の商を得るメソッドは [Numeric#quo](../method/Numeric/i/quo.md) です。
`quo` の返り値のクラスは、被除数・除数のクラスによって異なります。
例えば、被除数・除数の一方が [Integer](../class/Integer.md)、他方が [Float](../class/Float.md) なら返り値は `Float` です。

普通の商を得るメソッドには、[Numeric#fdiv](../method/Numeric/i/fdiv.md) もあります。
これは商を `Float` で返します（被除数・除数の一方が `Complex` のときは `Complex` を返します）。

整数同士の除法の場合、`quo` は厳密値を [Rational](../class/Rational.md) で返しますが、
`fdiv` では丸め誤差が生じうることに注意してください。

次に整除法に基づくメソッドについて述べます。

重要なことは、整除法の定義（言い換えれば整商・剰余の定義）がいくつもある、ということです。

しかし、どの定義にも共通していることが二つあります。

それは、被除数を `x`、除数を `y` としたときの整商を `q`、剰余を `r` とすると、第一に、

`x == y * q + r`（ただし `q` は整数）

が成り立つということです。
第二に、剰余 `r` は「半端」ですから、`r` の絶対値は `y` の絶対値より小さくなくてはならないということです。

この二つを満たす整商・剰余の定義は何通りもありますが、
Ruby では、2通りの定義を採用し、剰余について [Numeric#modulo](../method/Numeric/i/modulo.md) メソッドと [Numeric#remainder](../method/Numeric/i/remainder.md) メソッドとして実装されています。

`modulo` は、

- `y > 0` のとき `0 <= r <  y`
- `y < 0` のとき `y <  r <= 0`

となるように定められた剰余です。
定義からすぐ分かるとおり、剰余 `r` の符号は除数 `y` の符号と一致します。

`modulo` の別名は `%` で、普通はメソッド呼び出しの形ではなく二項演算子の形で用います。

`modulo` に対応する整商は [Numeric#div](../method/Numeric/i/div.md) です。
これは、普通の商を [Numeric#floor](../method/Numeric/i/floor.md) で整数化したものと一致します。

さきほどの例で出てきた [Numeric#divmod](../method/Numeric/i/divmod.md) は、
`div` と `modulo` の値を一度に配列で返すメソッドです。

一方、`remainder` は

- `x > 0` のとき `0   <= r <  |y|`
- `x < 0` のとき `-|y| <  r <= 0`

となるように定められた剰余です。
定義からすぐ分かるとおり、剰余 `r` の符号は被除数 `x` の符号と一致します。

`remainder` に対応する整商を得るメソッドはありませんが、
`x.quo(y).truncate` で得ることができます。

`x` と `y` の符号が同じとき、`modulo` と `remainder` は一致します。

商を得るメソッドには [Numeric#/](../method/Numeric/i/=2f.md) もあります。
普通はメソッド呼び出しの形ではなく、二項演算子として用います。
これは被除数・除数のクラスによって挙動が異なります。例えば `Integer` 同士なら `div` と同じ、`Integer` や `Rational` と `Float` なら `quo` と同じ、といった具合です。
被除数のクラスの `/` メソッドの説明をご覧ください。

Ruby 3.2 では整商を得るメソッドとして [Integer#ceildiv](../method/Integer/i/ceildiv.md) が追加されました。

`ceildiv` は普通の商を正の無限大に向かって丸めた整商を返します。

`n` 個の物を `m` 個ずつまとめたとき、（半端をまとめたものも含めて）いくつのグループができるかは以下のようにして得られます。

```ruby title="例: n 個を m 個ずつまとめて出来るグループの数"
p n.ceildiv(m)
```

`ceildiv` に対応した剰余を返すメソッドはありません。

## Instance Methods

- [%](../method/Numeric/i/=25.md)
- [modulo](../method/Numeric/i/modulo.md)
- [+@](../method/Numeric/i/=2b=40.md)
- [-@](../method/Numeric/i/=2d=40.md)
- [/](../method/Numeric/i/=2f.md)
- [<=>](../method/Numeric/i/=3c=3d=3e.md)
- [abs](../method/Numeric/i/abs.md)
- [magnitude](../method/Numeric/i/magnitude.md)
- [abs2](../method/Numeric/i/abs2.md)
- [angle](../method/Numeric/i/angle.md)
- [arg](../method/Numeric/i/arg.md)
- [phase](../method/Numeric/i/phase.md)
- [ceil](../method/Numeric/i/ceil.md)
- [coerce](../method/Numeric/i/coerce.md)
- [conj](../method/Numeric/i/conj.md)
- [conjugate](../method/Numeric/i/conjugate.md)
- [denominator](../method/Numeric/i/denominator.md)
- [div](../method/Numeric/i/div.md)
- [divmod](../method/Numeric/i/divmod.md)
- [eql?](../method/Numeric/i/eql=3f.md)
- [fdiv](../method/Numeric/i/fdiv.md)
- [finite?](../method/Numeric/i/finite=3f.md)
- [floor](../method/Numeric/i/floor.md)
- [i](../method/Numeric/i/i.md)
- [imag](../method/Numeric/i/imag.md)
- [imaginary](../method/Numeric/i/imaginary.md)
- [infinite?](../method/Numeric/i/infinite=3f.md)
- [integer?](../method/Numeric/i/integer=3f.md)
- [negative?](../method/Numeric/i/negative=3f.md)
- [nonzero?](../method/Numeric/i/nonzero=3f.md)
- [numerator](../method/Numeric/i/numerator.md)
- [polar](../method/Numeric/i/polar.md)
- [positive?](../method/Numeric/i/positive=3f.md)
- [quo](../method/Numeric/i/quo.md)
- [real](../method/Numeric/i/real.md)
- [real?](../method/Numeric/i/real=3f.md)
- [rect](../method/Numeric/i/rect.md)
- [rectangular](../method/Numeric/i/rectangular.md)
- [remainder](../method/Numeric/i/remainder.md)
- [round](../method/Numeric/i/round.md)
- [step](../method/Numeric/i/step.md)
- [to_c](../method/Numeric/i/to_c.md)
- [to_int](../method/Numeric/i/to_int.md)
- [truncate](../method/Numeric/i/truncate.md)
- [zero?](../method/Numeric/i/zero=3f.md)
