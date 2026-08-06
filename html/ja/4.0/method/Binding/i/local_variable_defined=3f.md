# Binding#local_variable_defined?

### def local_variable_defined?(symbol) -> bool

引数 symbol で指定した名前のローカル変数が定義されている場合に true を、そうでない場合に false を返します。

- **param** `symbol` -- ローカル変数名を [Symbol](../../../class/Symbol.md) オブジェクトで指定します。
- **raise** `NameError` -- 番号指定パラメータ（_1 など）を指定した場合に発生します。

```ruby title="例"
def foo
  a = 1
  p binding.local_variable_defined?(:a) # => true
  p binding.local_variable_defined?(:b) # => false
end
```

このメソッドは以下のコードの短縮形です。

```ruby
binding.eval("defined?(#{symbol}) == 'local-variable'")
```

- **SEE** [Binding#local_variable_get](../../../method/Binding/i/local_variable_get.md), [Binding#local_variable_set](../../../method/Binding/i/local_variable_set.md)
