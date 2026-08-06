# Hash#to_proc

### def to_proc -> Proc

self のキーに対応する値を返す [Proc](../../../class/Proc.md) オブジェクトを返します。

```ruby
h = {1 => 10, 2 => 20, 3 => 30}
p [1, 2, 3].map(&h) # => [10, 20, 30]
```
