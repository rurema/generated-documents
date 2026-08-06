# Binding#local_variable_set

### def local_variable_set(symbol, obj)

引数 symbol で指定した名前のローカル変数に引数 obj を設定します。

- **param** `symbol` -- ローカル変数名を [Symbol](../../../class/Symbol.md) オブジェクトで指定します。

- **param** `obj` -- 引数 symbol で指定したローカル変数に設定するオブジェクトを指定します。
- **raise** `NameError` -- 番号指定パラメータ（_1 など）を symbol に指定した場合に発生します。

```ruby title="例"
def foo
  a = 1
  bind = binding
  bind.local_variable_set(:a, 2) # set existing local variable `a'
  bind.local_variable_set(:b, 3) # create new local variable `b'
                                 # `b' exists only in binding
  p bind.local_variable_get(:a)  # => 2
  p bind.local_variable_get(:b)  # => 3
  p a                            # => 2
  b                               # ~> NameError
end
```

このメソッドは以下のコード(ただし、obj が Ruby のコードで出力される場合)と同様の動作をします。

```ruby
binding.eval("#{symbol} = #{obj}")
```

- **SEE** [Binding#local_variable_get](../../../method/Binding/i/local_variable_get.md), [Binding#local_variable_defined?](../../../method/Binding/i/local_variable_defined=3f.md)
