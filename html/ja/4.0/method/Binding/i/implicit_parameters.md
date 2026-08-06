# Binding#implicit_parameters

### def implicit_parameters -> [Symbol]

self のスコープで定義されている番号指定パラメータおよび it パラメータの名前を
[Symbol](../../../class/Symbol.md) の配列で返します。定義されていない場合は空の配列を返します。

これらは [Binding#local_variables](../../../method/Binding/i/local_variables.md) の返り値には含まれません。

```ruby
[42].each do
  it
  p binding.implicit_parameters # => [:it]
end

{ k: 42 }.each do
  _2
  p binding.implicit_parameters # => [:_1, :_2]
end

# どちらも使っていない場合
p binding.implicit_parameters   # => []
```

- **SEE** [Binding#implicit_parameter_get](../../../method/Binding/i/implicit_parameter_get.md), [Binding#implicit_parameter_defined?](../../../method/Binding/i/implicit_parameter_defined=3f.md), [Binding#local_variables](../../../method/Binding/i/local_variables.md)
