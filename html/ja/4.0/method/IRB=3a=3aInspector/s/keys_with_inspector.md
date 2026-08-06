# IRB::Inspector.keys_with_inspector

### def IRB::Inspector.keys_with_inspector(inspector) -> Array

引数で指定した [IRB::Inspector](../../../class/IRB=3a=3aInspector.md) に対応する key の配列を返します。

- **param** `inspector` -- [IRB::Inspector](../../../class/IRB=3a=3aInspector.md) オブジェクトを指定します。

```ruby
p IRB::Inspector.keys_with_inspector(IRB::Inspector::INSPECTORS[true])
# => [true, :p, "p", :inspect, "inspect"]
```
