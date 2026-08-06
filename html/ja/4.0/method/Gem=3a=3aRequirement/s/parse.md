# Gem::Requirement.parse

### def Gem::Requirement.parse(obj) -> Array

バージョンの必要上件をパースして比較演算子とバージョンを要素とする二要素の配列を返します。

- **param** `obj` -- 必要上件を表す文字列または [Gem::Version](../../../class/Gem=3a=3aVersion.md) のインスタンスを指定します。
- **return** -- 比較演算子と [Gem::Version](../../../class/Gem=3a=3aVersion.md) のインスタンスを要素とする二要素の配列を返します。
- **raise** `ArgumentError` -- obj に不正なオブジェクトを指定すると発生します。

```ruby
p Gem::Requirement.parse("~> 3.2.1") # => ["~>", #<Gem::Version "3.2.1">]
```
