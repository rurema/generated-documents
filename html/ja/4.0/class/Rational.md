# class Rational < Numeric

有理数を表すクラスです。

分子・分母を [Integer](../class/Integer.md) オブジェクトとして保持します。

`Rational` オブジェクトはリテラルや [Kernel?.Rational](../method/Kernel/m/Rational.md) メソッドによって生成できます。

```ruby title="リテラルによる生成"
# 10 進整数に `r` を付けた形式
p -3r # => (-3/1)

# 10 進小数に `r` を付けた形式
p 0.1r # => (1/10)
# Float のリテラル `0.1` と違い、
# 誤差無しで 0.1 を表す Rational オブジェクトが得られる

p 3/4r # => (3/4)
# `3/4r` という形式の Rational のリテラルがあるわけではなく、
# Integer のリテラル `3` と Rational のリテラル `4r` と
# 除算演算子 `/` からなる演算子式
# `3r/4` と書くこともできる
```

```ruby title="Rational メソッドによる生成"
# 分子・分母を引数として与える
p Rational(3, 4)     # => (3/4)

# 整数の場合、分母 `1` は略せる
p Rational(3) # => (3/1)

# 分数形式の文字列を与える
p Rational("3/4")    # => (3/4)

# 10 進整数、10 進小数の形式の文字列を与える
p Rational("3") # => (3/1)
p Rational("-0.1") # => (-1/10)
```

`Rational.new` で生成することはできません（[Integer](../class/Integer.md) や [Float](../class/Float.md)
と同様）。

```ruby
Rational.new(1, 3) # ~> NoMethodError
```

[Rational](../class/Rational.md) オブジェクトは常に既約（それ以上約分できないこと）かつ分母が正であるような分子・分母を保持しています。

```ruby
p Rational(2, -6) # => (-1/3)

# 計算結果として生じる Rational オブジェクトもそうなっている
p Rational(2, 3) / (-4) # => (-1/6)
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
