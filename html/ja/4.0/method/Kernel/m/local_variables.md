# Kernel?.local_variables

### module_function def local_variables -> [Symbol]

現在のスコープで定義されているローカル変数名の配列を返します。

```ruby title="例"
yuyu = 0
p local_variables # => [:yuyu]
```

番号指定パラメータ（_1 など）は 4.0 からローカル変数として扱われなくなり、返り値に含まれなくなりました。

```ruby
[1].each do
  p _1              # => 1
  p local_variables # => []（Ruby 3.4 以前は [:_1]）
end
```

番号指定パラメータ自体は従来どおり参照できます（[spec/call#numbered_parameters](../../../doc/spec=2fcall.md#numbered_parameters)）。

- **SEE** [Kernel?.global_variables](../../../method/Kernel/m/global_variables.md),[Object#instance_variables](../../../method/Object/i/instance_variables.md),[Module.constants](../../../method/Module/s/constants.md),[Module#constants](../../../method/Module/i/constants.md),[Module#class_variables](../../../method/Module/i/class_variables.md)
