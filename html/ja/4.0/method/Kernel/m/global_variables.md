# Kernel?.global_variables

### module_function def global_variables -> [Symbol]

プログラム中で定義されているグローバル変数(`$`で始まる変数)名の配列を返します。

```ruby title="例"
p global_variables # => [:$;, :$-F, :$@, ... ]
```

- **SEE** [Kernel?.local_variables](../../../method/Kernel/m/local_variables.md),[Object#instance_variables](../../../method/Object/i/instance_variables.md),[Module.constants](../../../method/Module/s/constants.md),[Module#constants](../../../method/Module/i/constants.md),[Module#class_variables](../../../method/Module/i/class_variables.md)
