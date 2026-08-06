# Binding#local_variable_get

### def local_variable_get(symbol) -> object

引数 symbol で指定した名前のローカル変数に設定された値を返します。

- **param** `symbol` -- ローカル変数名を [Symbol](../../../class/Symbol.md) オブジェクトで指定します。

- **raise** `NameError` -- 引数 symbol で指定したローカル変数が未定義の場合に発生します。
- **raise** `NameError` -- 番号指定パラメータ（_1 など）を指定した場合に発生します。

```ruby title="例"
def foo
  a = 1
  p binding.local_variable_get(:a) # => 1
  binding.local_variable_get(:b) # ~> NameError
end
```

このメソッドは以下のコードの短縮形です。

```ruby
binding.eval("#{symbol}")
```

- **SEE** [Binding#local_variable_set](../../../method/Binding/i/local_variable_set.md), [Binding#local_variable_defined?](../../../method/Binding/i/local_variable_defined=3f.md)
