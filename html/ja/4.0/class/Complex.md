# class Complex < Numeric

複素数を扱うクラスです。

[Complex](../class/Complex.md) オブジェクトを作成するには、[Kernel?.Complex](../method/Kernel/m/Complex.md)、
[Complex.rect](../method/Complex/s/rect.md)、[Complex.polar](../method/Complex/s/polar.md)、[Numeric#to_c](../method/Numeric/i/to_c.md)、
[String#to_c](../method/String/i/to_c.md) のいずれかを使用します。

```ruby title="Complex オブジェクトの作り方"
p Complex(1)         # => (1+0i)
p Complex(2, 3)      # => (2+3i)
p Complex.polar(2, 3)  # => (-1.9799849932008908+0.2822400161197344i)
p Complex(0.3)       # => (0.3+0i)
p Complex('0.3-0.5i')  # => (0.3-0.5i)
p Complex('2/3+3/4i')  # => ((2/3)+(3/4)*i)
p Complex('1@2')     # => (-0.4161468365471424+0.9092974268256817i)
p 3.to_c             # => (3+0i)
p 0.3.to_c           # => (0.3+0i)
p '0.3-0.5i'.to_c    # => (0.3-0.5i)
p '2/3+3/4i'.to_c    # => ((2/3)+(3/4)*i)
p '1@2'.to_c         # => (-0.4161468365471424+0.9092974268256817i)
```

[Complex](../class/Complex.md) オブジェクトは有理数の形式も実数の形式も扱う事ができます。

```ruby title="例"
p Complex(1, 1) / 2  # => ((1/2)+(1/2)*i)
p Complex(1, 1) / 2.0  # => (0.5+0.5i)
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
- [to_r](../method/Complex/i/to_r.md)
- [real](../method/Complex/i/real.md)
- [real?](../method/Complex/i/real=3f.md)
- [rect](../method/Complex/i/rect.md)
- [rectangular](../method/Complex/i/rectangular.md)
- [to_c](../method/Complex/i/to_c.md)
- [to_f](../method/Complex/i/to_f.md)
- [to_i](../method/Complex/i/to_i.md)
- [to_json](../method/Complex/i/to_json.md)
- [to_s](../method/Complex/i/to_s.md)

## Private Instance Methods

- [marshal_dump](../method/Complex/i/marshal_dump.md)
