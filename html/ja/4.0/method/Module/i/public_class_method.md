# Module#public_class_method

### def public_class_method(*name) -> self
### def public_class_method(names) -> self

name で指定したクラスメソッド (クラスの特異メソッド) の可視性を public に変更します。

- **param** `name` --  0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。
- **param** `names` -- 0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を [Array](../../../class/Array.md) で指定します。

```ruby title="例"
class Factory
  def self.foo
    "foo"
  end

  private_class_method :foo
end

Factory.foo # NoMethodError: private method 'foo' called for class Factory

p Factory.public_class_method(:foo) # => Factory
p Factory.foo # => "foo"
```
