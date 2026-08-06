# Module#remove_class_variable

### def remove_class_variable(name) -> object

引数で指定したクラス変数を取り除き、そのクラス変数に設定されていた値を返します。

- **param** `name` -- [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。

- **return** -- 引数で指定されたクラス変数に設定されていた値を返します。

- **raise** `NameError` -- 引数で指定されたクラス変数がそのモジュールやクラスに定義されていない場合に発生します。

```ruby title="例"
class Counter
  @@count = 1
  p remove_class_variable(:@@count) # => 1
  @@count     # => uninitialized class variable @@count in Counter (NameError)
end
```

- **SEE** [Module#remove_const](../../../method/Module/i/remove_const.md), [Object#remove_instance_variable](../../../method/Object/i/remove_instance_variable.md)
