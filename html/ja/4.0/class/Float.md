# class Float < Numeric

浮動小数点数を表すクラスです。

`Float` の実装は C 言語の double で、その精度は環境に依存します。

一般にはせいぜい15桁です。詳しくは多くのシステムで採用されている浮動小数点標準規格、IEEE 754 を参照してください。

- **SEE** <https://ja.wikipedia.org/wiki/IEEE_754>

```ruby title="あるシステムでの 1/3(=0.333...) の結果"
printf("%.50f\n", 1.0/3)
  # => 0.33333333333333331482961625624739099293947219848633
```

特別な値として正の無限大（+∞）、負の無限大（−∞）、非数（NaN: Not a Number）があります。それぞれ以下のようにして得られます。負の無限大は定数として定義されていません。

```ruby title="正負の無限大と非数"
# 正の無限大（+∞）
p Float::INFINITY  # => Infinity
p 1.0 / 0          # => Infinity

# 負の無限大（−∞）
p -Float::INFINITY # => -Infinity
p -1.0 / 0         # => -Infinity

# 非数（NaN）
p Float::NAN       # => NaN
p 0.0 / 0          # => NaN
```

浮動小数点数リテラル `0.0` と `-0.0` は若干違った性質を持つ `Float` オブジェクトを生成します。どちらもゼロを表しますが、以下のような違いがあります。

```ruby title="0.0 と -0.0 の性質が異なる例"
# 逆数をとると符号の異なる無限大になる
p 1 / 0.0  # => Infinity
p 1 / -0.0 # => -Infinity

p Math.atan2(0.0, -1)  # => 3.141592653589793
p Math.atan2(-0.0, -1) # => -3.141592653589793

p Math.atan2(1, 0.0)  # => 3.141592653589793
p Math.atan2(1, -0.0) # => -3.141592653589793
```

円周率（[Math::PI](../method/Math/c/PI.md)）などの数学定数や平方根（[Math?.sqrt](../method/Math/m/sqrt.md)）などの数学関数については [Math](../class/Math.md) を参照してください。

## Instance Methods

- [%](../method/Float/i/=25.md)
- [modulo](../method/Float/i/modulo.md)
- [*](../method/Float/i/=2a.md)
- [**](../method/Float/i/=2a=2a.md)
- [+](../method/Float/i/=2b.md)
- [-](../method/Float/i/=2d.md)
- [-@](../method/Float/i/=2d=40.md)
- [/](../method/Float/i/=2f.md)
- [<](../method/Float/i/=3c.md)
- [<=](../method/Float/i/=3c=3d.md)
- [<=>](../method/Float/i/=3c=3d=3e.md)
- [==](../method/Float/i/=3d=3d.md)
- [>](../method/Float/i/=3e.md)
- [>=](../method/Float/i/=3e=3d.md)
- [abs](../method/Float/i/abs.md)
- [magnitude](../method/Float/i/magnitude.md)
- [angle](../method/Float/i/angle.md)
- [arg](../method/Float/i/arg.md)
- [phase](../method/Float/i/phase.md)
- [ceil](../method/Float/i/ceil.md)
- [denominator](../method/Float/i/denominator.md)
- [divmod](../method/Float/i/divmod.md)
- [eql?](../method/Float/i/eql=3f.md)
- [finite?](../method/Float/i/finite=3f.md)
- [floor](../method/Float/i/floor.md)
- [hash](../method/Float/i/hash.md)
- [infinite?](../method/Float/i/infinite=3f.md)
- [inspect](../method/Float/i/inspect.md)
- [to_s](../method/Float/i/to_s.md)
- [nan?](../method/Float/i/nan=3f.md)
- [negative?](../method/Float/i/negative=3f.md)
- [next_float](../method/Float/i/next_float.md)
- [numerator](../method/Float/i/numerator.md)
- [positive?](../method/Float/i/positive=3f.md)
- [prev_float](../method/Float/i/prev_float.md)
- [rationalize](../method/Float/i/rationalize.md)
- [round](../method/Float/i/round.md)
- [to_d](../method/Float/i/to_d.md)
- [to_f](../method/Float/i/to_f.md)
- [to_i](../method/Float/i/to_i.md)
- [truncate](../method/Float/i/truncate.md)
- [to_r](../method/Float/i/to_r.md)
- [zero?](../method/Float/i/zero=3f.md)

## Constants

- [DIG](../method/Float/c/DIG.md)
- [EPSILON](../method/Float/c/EPSILON.md)
- [INFINITY](../method/Float/c/INFINITY.md)
- [MANT_DIG](../method/Float/c/MANT_DIG.md)
- [MAX](../method/Float/c/MAX.md)
- [MAX_10_EXP](../method/Float/c/MAX_10_EXP.md)
- [MAX_EXP](../method/Float/c/MAX_EXP.md)
- [MIN](../method/Float/c/MIN.md)
- [MIN_10_EXP](../method/Float/c/MIN_10_EXP.md)
- [MIN_EXP](../method/Float/c/MIN_EXP.md)
- [NAN](../method/Float/c/NAN.md)
- [RADIX](../method/Float/c/RADIX.md)
