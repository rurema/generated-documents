# class Range < Object

範囲オブジェクトのクラス。
範囲オブジェクトは文字どおり何らかの意味での範囲を表します。数の範囲はもちろん、日付の範囲や、「"a" から "z" まで」といった文字列の範囲を表すこともできます。

#### 作り方

範囲オブジェクトは、[Range.new](../method/Range/s/new.md) を用いるほか、範囲演算子（`..` または `...`）を用いた [spec/operator#range](../doc/spec=2foperator.md#range) で生成できます。
いずれの方法でも始端と終端を与えます。

```ruby title="範囲オブジェクトの例"
Range.new(1, 5) # 1 以上 5 以下
1..5            # 同上
1...5           # 1 以上 5 未満
```

この例で分かるように、範囲オブジェクトは終端を含む範囲も含まない範囲も表せます。

Ruby 2.6.0 からは、終端に nil を与えることで「終端を持たない範囲オブジェクト」を作ることができるようになりました。

```ruby title="終端を持たない範囲オブジェクト"
p Range.new(1, nil) # 1 以上（上限無し）を表す
p(1..nil)           # 同上
p(1..)              # 同上（略した書き方）
```

また、Ruby 2.7.0 では始端に nil を与えることで「始端を持たない範囲オブジェクト」を作ることもできるようになりました。

```ruby title="始端を持たない範囲オブジェクト"
p Range.new(nil, 5) # 5 以下（下限無し）を表す
p(nil..5)           # 同上
p(..5)              # 同上（略した書き方）
```

始端も終端も持たない範囲オブジェクトは「全範囲」を表します。

```ruby title="始端も終端も持たない範囲オブジェクト"
# 以下はすべて同じ範囲
p Range.new(nil, nil) # => nil..nil
p(nil..nil)           # => nil..nil
p(..nil)              # => nil..nil
p(nil..)              # => nil..nil
```

範囲式で両端を略した書き方はできません。

```text
p(..)  # => SyntaxError
p(...) # Ruby 2.7 で導入されたメソッド引数の forward として解釈されてしまう
```

#### 機能

範囲オブジェクトは範囲を表しているので、基本的な機能として「ある値がその範囲に含まれるか否かを判定する」ということがあります。

```ruby title="値が範囲に含まれるかどうかを判定"
p (1..5).cover?(6)  # => false
p (1..5).cover?(5)  # => true
p (1...5).cover?(5) # => false
```

[Range#cover?](../method/Range/i/cover=3f.md) メソッドでの判定には演算子 <=> が使われます。

当然、始端と終端は <=> メソッドで比較可能である（nil 以外を返す）必要があります。

範囲オブジェクトのもう一つの基本的機能は繰り返しの範囲を表すことです。

```ruby title="繰り返しの範囲を範囲オブジェクトで表す"
(3..5).each{ |i| p i }
# => 3
#    4
#    5

(3...5).each{ |i| p i }
# => 3
#    4
```

繰り返しの範囲を表す範囲オブジェクトは、始端が「次の値」を返す succ メソッドを持たなければなりません。

Range クラスには [Enumerable](../class/Enumerable.md) が include してあるので、[Range#each](../method/Range/i/each.md) に基づき、Enumerable モジュールが提供する多様なメソッドを使うことができます。

### 破壊的な変更

Ruby の Range クラスは immutable です。
つまり、オブジェクト自体を破壊的に変更することはできません。
ですので、一度生成された Range のオブジェクトの指し示す範囲は決して変更することはできません。

```ruby
range = 1..10
p range.first   # => 1
range.first = 1 # ~> NoMethodError
```

また、Ruby 3.0.0 からすべての Range オブジェクトは freeze されるようになりました。

```ruby
p (1..10).frozen?
# => true
p Range.new(1, 10).frozen?
# => true
```

## Class Methods

- [json_create](../method/Range/s/json_create.md)
- [new](../method/Range/s/new.md)

## Instance Methods

- [%](../method/Range/i/=25.md)
- [step](../method/Range/i/step.md)
- [==](../method/Range/i/=3d=3d.md)
- [===](../method/Range/i/=3d=3d=3d.md)
- [begin](../method/Range/i/begin.md)
- [first](../method/Range/i/first.md)
- [bsearch](../method/Range/i/bsearch.md)
- [cover?](../method/Range/i/cover=3f.md)
- [each](../method/Range/i/each.md)
- [end](../method/Range/i/end.md)
- [last](../method/Range/i/last.md)
- [entries](../method/Range/i/entries.md)
- [to_a](../method/Range/i/to_a.md)
- [eql?](../method/Range/i/eql=3f.md)
- [exclude_end?](../method/Range/i/exclude_end=3f.md)
- [hash](../method/Range/i/hash.md)
- [include?](../method/Range/i/include=3f.md)
- [member?](../method/Range/i/member=3f.md)
- [inspect](../method/Range/i/inspect.md)
- [max](../method/Range/i/max.md)
- [min](../method/Range/i/min.md)
- [minmax](../method/Range/i/minmax.md)
- [overlap?](../method/Range/i/overlap=3f.md)
- [reverse_each](../method/Range/i/reverse_each.md)
- [size](../method/Range/i/size.md)
- [to_json](../method/Range/i/to_json.md)
- [to_s](../method/Range/i/to_s.md)
