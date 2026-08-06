# class Rational < Numeric

有理数を扱うクラスです。

「1/3」のような有理数を扱う事ができます。[Integer](../class/Integer.md) や [Float](../class/Float.md)
と同様に Rational.new ではなく、 [Kernel?.Rational](../method/Kernel/m/Rational.md) を使用して
[Rational](../class/Rational.md) オブジェクトを作成します。

```ruby title="例"
p Rational(1, 3)     # => (1/3)
p Rational('1/3')    # => (1/3)
p Rational('0.33')   # => (33/100)
Rational.new(1, 3)   # ~> NoMethodError
```

[Rational](../class/Rational.md) オブジェクトは常に既約(それ以上約分できない状態)である事に注意してください。

```ruby title="例"
p Rational(2, 6)     # => (1/3)
p Rational(1, 3) * 3 # => (1/1)
```

## Class Methods

- [json_create](../method/Rational/s/json_create.md)

## Instance Methods

- [*](../method/Rational/i/=2a.md)
- [**](../method/Rational/i/=2a=2a.md)
- [+](../method/Rational/i/=2b.md)
- [-](../method/Rational/i/=2d.md)
- [-@](../method/Rational/i/=2d=40.md)
- [/](../method/Rational/i/=2f.md)
- [quo](../method/Rational/i/quo.md)
- [<=>](../method/Rational/i/=3c=3d=3e.md)
- [==](../method/Rational/i/=3d=3d.md)
- [abs](../method/Rational/i/abs.md)
- [magnitude](../method/Rational/i/magnitude.md)
- [ceil](../method/Rational/i/ceil.md)
- [coerce](../method/Rational/i/coerce.md)
- [denominator](../method/Rational/i/denominator.md)
- [fdiv](../method/Rational/i/fdiv.md)
- [floor](../method/Rational/i/floor.md)
- [hash](../method/Rational/i/hash.md)
- [inspect](../method/Rational/i/inspect.md)
- [negative?](../method/Rational/i/negative=3f.md)
- [numerator](../method/Rational/i/numerator.md)
- [positive?](../method/Rational/i/positive=3f.md)
- [rationalize](../method/Rational/i/rationalize.md)
- [round](../method/Rational/i/round.md)
- [to_d](../method/Rational/i/to_d.md)
- [to_f](../method/Rational/i/to_f.md)
- [to_i](../method/Rational/i/to_i.md)
- [truncate](../method/Rational/i/truncate.md)
- [to_json](../method/Rational/i/to_json.md)
- [to_r](../method/Rational/i/to_r.md)
- [to_s](../method/Rational/i/to_s.md)

## Private Class Methods

- [convert](../method/Rational/s/convert.md)

## Private Instance Methods

- [marshal_dump](../method/Rational/i/marshal_dump.md)
