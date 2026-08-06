# Object#instance_variables

### def instance_variables -> [Symbol]

オブジェクトのインスタンス変数名をシンボルの配列として返します。

```ruby
obj = Object.new
obj.instance_eval { @foo, @bar = nil }
p obj.instance_variables

#=> [:@foo, :@bar]
```

- **SEE** [Object#instance_variable_get](../../../method/Object/i/instance_variable_get.md), [Kernel?.local_variables](../../../method/Kernel/m/local_variables.md), [Kernel?.global_variables](../../../method/Kernel/m/global_variables.md), [Module.constants](../../../method/Module/s/constants.md), [Module#constants](../../../method/Module/i/constants.md), [Module#class_variables](../../../method/Module/i/class_variables.md)
