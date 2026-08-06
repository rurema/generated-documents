# Binding#implicit_parameter_defined?

### def implicit_parameter_defined?(symbol) -> bool

引数 symbol で指定した番号指定パラメータまたは it パラメータが self のスコープで定義されている場合に true を、そうでない場合に false を返します。

定義されていない場合に false を返すのは、symbol が番号指定パラメータまたは
it パラメータの名前である場合だけです。それ以外の名前を指定した場合は
[NameError](../../../class/NameError.md) が発生します。

- **param** `symbol` -- 番号指定パラメータまたは it パラメータの名前を [Symbol](../../../class/Symbol.md) で指定します。

- **raise** `NameError` -- 指定した名前が番号指定パラメータでも it パラメータでもない場合に発生します。

```ruby
[42].each do
  it
  p binding.implicit_parameter_defined?(:it) # => true
  p binding.implicit_parameter_defined?(:_1) # => false
end

{ k: 42 }.each do
  _2
  p binding.implicit_parameter_defined?(:_1) # => true
  p binding.implicit_parameter_defined?(:_3) # => false
  p binding.implicit_parameter_defined?(:it) # => false
end
```

- **SEE** [Binding#implicit_parameters](../../../method/Binding/i/implicit_parameters.md), [Binding#implicit_parameter_get](../../../method/Binding/i/implicit_parameter_get.md)
