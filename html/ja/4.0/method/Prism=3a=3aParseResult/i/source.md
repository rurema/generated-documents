# Prism::ParseResult#source

### def source -> Prism::Source

解析したソースコードそのものを表す [Prism::Source](../../../class/Prism=3a=3aSource.md) のインスタンスを返します。バイトオフセットから行番号・桁位置を求めるなど、位置情報を扱うための補助的なメソッドを持ちます。

実際にはサブクラス `Prism::ASCIISource` のインスタンスの場合があります。


```ruby title="例"
require "prism"

result = Prism.parse("1 + 2")
p result.source.is_a?(Prism::Source) # => true
```
