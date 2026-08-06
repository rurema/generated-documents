# Module#public_instance_method

### def public_instance_method(name) -> UnboundMethod

self の public インスタンスメソッド name をオブジェクト化した [UnboundMethod](../../../class/UnboundMethod.md) を返します。

- **param** `name` -- メソッド名を [Symbol](../../../class/Symbol.md) または [String](../../../class/String.md) で指定します。

- **raise** `NameError` -- 定義されていないメソッド名や、
       protected メソッド名、 private メソッド名を引数として与えると発生します。

```ruby title="例"
p Kernel.public_instance_method(:object_id) #=> #<UnboundMethod: Kernel#object_id>
Kernel.public_instance_method(:p)         #   method 'p' for module 'Kernel' is private (NameError)
```

- **SEE** [Module#instance_method](../../../method/Module/i/instance_method.md),[Object#public_method](../../../method/Object/i/public_method.md)
