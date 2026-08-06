# Binding#implicit_parameter_get

### def implicit_parameter_get(symbol) -> object

引数 symbol で指定した番号指定パラメータまたは it パラメータの値を返します。

- **param** `symbol` -- 番号指定パラメータまたは it パラメータの名前を [Symbol](../../../class/Symbol.md) で指定します。

- **raise** `NameError` -- 指定した名前が番号指定パラメータでも it パラメータでもない場合に発生します。

- **raise** `NameError` -- 指定したパラメータが self のスコープで定義されていない場合に発生します。

```ruby
[42].each do
  it
  p binding.implicit_parameter_get(:it) # => 42
end

{ k: 42 }.each do
  _2
  p binding.implicit_parameter_get(:_1) # => :k
  p binding.implicit_parameter_get(:_2) # => 42
end
```

- **SEE** [Binding#implicit_parameters](../../../method/Binding/i/implicit_parameters.md), [Binding#implicit_parameter_defined?](../../../method/Binding/i/implicit_parameter_defined=3f.md)
