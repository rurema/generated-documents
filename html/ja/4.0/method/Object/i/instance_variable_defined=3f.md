# Object#instance_variable_defined?

### def instance_variable_defined?(var) -> bool

インスタンス変数 var が定義されていたら真を返します。

- **param** `var` -- インスタンス変数名を文字列か [Symbol](../../../class/Symbol.md) で指定します。

```ruby
class Fred
  def initialize(p1, p2)
    @a, @b = p1, p2
  end
end
fred = Fred.new('cat', 99)
p fred.instance_variable_defined?(:@a)    #=> true
p fred.instance_variable_defined?("@b")   #=> true
p fred.instance_variable_defined?("@c")   #=> false
```

- **SEE** [Object#instance_variable_get](../../../method/Object/i/instance_variable_get.md),[Object#instance_variable_set](../../../method/Object/i/instance_variable_set.md),[Object#instance_variables](../../../method/Object/i/instance_variables.md)
