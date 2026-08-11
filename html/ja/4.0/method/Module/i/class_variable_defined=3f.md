# Module#class_variable_defined?

### def class_variable_defined?(name) -> bool

name で与えられた名前のクラス変数がモジュールに存在する場合 true を返します。

- **param** `name` -- [Symbol](../../../class/Symbol.md) か [String](../../../class/String.md) を指定します。

```ruby title="例"
class Fred
  @@foo = 99
end
p Fred.class_variable_defined?(:@@foo)  # => true
p Fred.class_variable_defined?(:@@bar)  # => false
p Fred.class_variable_defined?('@@foo')  # => true
p Fred.class_variable_defined?('@@bar')  # => false
```
