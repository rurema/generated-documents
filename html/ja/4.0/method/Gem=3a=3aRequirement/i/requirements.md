# Gem::Requirement#requirements

### def requirements -> [[String, Gem::Version]]
{: since="1.9.1"}

`self` に含まれる必要条件の配列を返します。

配列に含まれる各要素は、比較演算子を表す文字列と [Gem::Version](../../../class/Gem=3a=3aVersion.md) のインスタンスを
要素とする、2 要素の配列です。

```ruby title="例"
req = Gem::Requirement.new("< 5.0", ">= 1.9")
p req.requirements
# => [["<", #<Gem::Version "5.0">], [">=", #<Gem::Version "1.9">]]
```
