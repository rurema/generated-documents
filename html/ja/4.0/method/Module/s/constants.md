# Module.constants

### def Module.constants -> [Symbol]

このメソッドを呼び出した時点で参照可能な定数名の配列を返します。

```ruby title="例"
class C
  FOO = 1
end
p Module.constants   # => [:RUBY_PLATFORM, :STDIN, ..., :C, ...]
                     # 出力中に :FOO は現われない
```

- **SEE** [Module#constants](../../../method/Module/i/constants.md), [Kernel?.local_variables](../../../method/Kernel/m/local_variables.md), [Kernel?.global_variables](../../../method/Kernel/m/global_variables.md), [Object#instance_variables](../../../method/Object/i/instance_variables.md), [Module#class_variables](../../../method/Module/i/class_variables.md)
