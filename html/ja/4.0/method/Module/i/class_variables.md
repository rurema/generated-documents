# Module#class_variables

### def class_variables(inherit = true) -> [Symbol]

クラス／モジュールに定義されているクラス変数の名前の配列を返します。

- **param** `inherit` -- false を指定しない場合はスーパークラスやインクルードしているモジュールのクラス変数を含みます。

```ruby title="例"
class One
  @@var1 = 1
end
class Two < One
  @@var2 = 2
end
p One.class_variables        # => [:@@var1]
p Two.class_variables        # => [:@@var2, :@@var1]
p Two.class_variables(false) # => [:@@var2]
```

- **SEE** [Module.constants](../../../method/Module/s/constants.md), [Kernel?.local_variables](../../../method/Kernel/m/local_variables.md), [Kernel?.global_variables](../../../method/Kernel/m/global_variables.md), [Object#instance_variables](../../../method/Object/i/instance_variables.md), [Module#constants](../../../method/Module/i/constants.md)
