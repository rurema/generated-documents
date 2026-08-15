# class Complex < Numeric

複素数を表すクラスです。

実部・虚部を、実数を表す数値オブジェクトとして保持します。

[Complex](../class/Complex.md) オブジェクトは以下の方法で生成できます。

- 虚数リテラルで記述する
- [Kernel?.Complex](../method/Kernel/m/Complex.md)、[Complex.rect](../method/Complex/s/rect.md)、[Complex.polar](../method/Complex/s/polar.md) を使う
- 他の数値クラスのオブジェクトから [Numeric#to_c](../method/Numeric/i/to_c.md) で変換する
- 文字列表現から [String#to_c](../method/String/i/to_c.md) で変換する

```ruby title="リテラルによる生成"
p 1i # => (0+1i)
# 虚部は Integer オブジェクトで保持される

p 1.0i # => (0+1.0i)
# 虚部は Float オブジェクトで保持される

p 1ri   # => (0+(1/1)*i)
p 0.5ri # => (0+(1/2)*i)
# 虚部は Rational オブジェクトで保持される

p 1+2i # => (1+2i)
# `1+2i` という形式のリテラルがあるわけではなく、
# Integer のリテラル `1` と虚数リテラル `2i` と
# 減算演算子 `-` からなる演算子式
```

```ruby title="Complex メソッドによる生成"
# 実部のみ与える
p Complex(1)          # => (1+0i)
p Complex(0.3)        # => (0.3+0i)

# 実部と虚部を与える
p Complex(2, 3)       # => (2+3i)

# 文字列表現を与える（実部・虚部に浮動小数点リテラル形式を使う）
p Complex("0.3-0.5i") # => (0.3-0.5i)

# 文字列表現を与える（実部・虚部に有理数リテラル形式を使う）
p Complex("2/3+3/4i") # => ((2/3)+(3/4)*i)

# 文字列表現を与える（絶対値と偏角による極形式）
p Complex("2@3.141592653589793") # => (-2+0.0i)
```

```ruby title="Complex.rect メソッドによる生成"
# 実部と虚部を与える
p Complex.rect(2, 3) # => (2+3i)
# `Complex(2, 3)` と変わらない
```

```ruby title="Complex.polar メソッドによる生成"
# 絶対値と偏角を与える
p Complex.polar(0.5, Math::PI / 2) # => (0.0+0.5i)
```

```ruby title="他の数値クラスオブジェクトからの変換による生成"
p 3.to_c    # => (3+0i)
p 0.3.to_c  # => (0.3+0i)
p 0.5r.to_c # => ((1/2)+0i)
```

```ruby title="文字列表現からの変換による生成"
p "0.3-0.5i".to_c    # => (0.3-0.5i)
p "2/3+3/4i".to_c    # => ((2/3)+(3/4)*i)
p "2@3.141592653589793".to_c # => (-2+0.0i)
```

複素数演算において、オペランドの実部・虚部のクラスは演算結果の実部・虚部のクラスに影響します。

```ruby title="例"
a = 3.0 + 3i
# 実部が Float、虚部が Integer

p a / 2 # => (1.5+(3/2)*i)
# 実部は Float、虚部は Rational になる
```

実部・虚部ともに `Integer` もしくは `Rational` であるような `Complex` オブジェクト、および `Integer` オブジェクト、`Rational` オブジェクトの間の加減乗除算は丸め誤差なく行われます。

```ruby title="虚部が Rational と Float の場合の誤差の比較"
p ([1ri / 10] * 10).sum
# => (0+(1/1)*i)
# 演算誤差無し

# 参考：
p ([1.0i / 10] * 10).sum
# => (0+0.9999999999999999i)
# `1.0i / 10` の時点で誤差が生じている
# それを 10 個足し合わせることで、`to_s` でも分かる誤差になっている
```

## Class Methods

- [json_create](../method/Complex/s/json_create.md)
- [polar](../method/Complex/s/polar.md)
- [rect](../method/Complex/s/rect.md)
- [rectangular](../method/Complex/s/rectangular.md)

## Instance Methods

- [*](../method/Complex/i/=2a.md)
- [**](../method/Complex/i/=2a=2a.md)
- [+](../method/Complex/i/=2b.md)
- [-](../method/Complex/i/=2d.md)
- [-@](../method/Complex/i/=2d=40.md)
- [/](../method/Complex/i/=2f.md)
- [quo](../method/Complex/i/quo.md)
- [<=>](../method/Complex/i/=3c=3d=3e.md)
- [==](../method/Complex/i/=3d=3d.md)
- [abs](../method/Complex/i/abs.md)
- [magnitude](../method/Complex/i/magnitude.md)
- [abs2](../method/Complex/i/abs2.md)
- [angle](../method/Complex/i/angle.md)
- [arg](../method/Complex/i/arg.md)
- [phase](../method/Complex/i/phase.md)
- [coerce](../method/Complex/i/coerce.md)
- [conj](../method/Complex/i/conj.md)
- [conjugate](../method/Complex/i/conjugate.md)
- [denominator](../method/Complex/i/denominator.md)
- [fdiv](../method/Complex/i/fdiv.md)
- [finite?](../method/Complex/i/finite=3f.md)
- [imag](../method/Complex/i/imag.md)
- [imaginary](../method/Complex/i/imaginary.md)
- [infinite?](../method/Complex/i/infinite=3f.md)
- [inspect](../method/Complex/i/inspect.md)
- [numerator](../method/Complex/i/numerator.md)
- [polar](../method/Complex/i/polar.md)
- [rationalize](../method/Complex/i/rationalize.md)
- [real](../method/Complex/i/real.md)
- [real?](../method/Complex/i/real=3f.md)
- [rect](../method/Complex/i/rect.md)
- [rectangular](../method/Complex/i/rectangular.md)
- [to_c](../method/Complex/i/to_c.md)
- [to_f](../method/Complex/i/to_f.md)
- [to_i](../method/Complex/i/to_i.md)
- [to_json](../method/Complex/i/to_json.md)
- [to_r](../method/Complex/i/to_r.md)
- [to_s](../method/Complex/i/to_s.md)

## Private Instance Methods

- [marshal_dump](../method/Complex/i/marshal_dump.md)
