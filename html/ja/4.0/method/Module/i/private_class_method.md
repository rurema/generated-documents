# Module#private_class_method

### def private_class_method(*name) -> self
### def private_class_method(names) -> self

name で指定したクラスメソッド (クラスの特異メソッド) の可視性を private に変更します。

- **param** `name` --  0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。
- **param** `names` -- 0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を [Array](../../../class/Array.md) で指定します。

```ruby title="例"
module Gadget
  def self.foo; end
end

p Gadget.singleton_class.private_method_defined?(:foo) # => false
p Gadget.private_class_method(:foo) # => Gadget
p Gadget.singleton_class.private_method_defined?(:foo) # => true
```
