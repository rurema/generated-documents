# Module#class_variable_get

### def class_variable_get(name) -> object

クラス／モジュールに定義されているクラス変数 name の値を返します。

- **param** `name` -- [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。

- **raise** `NameError` -- クラス変数 name が定義されていない場合、発生します。

```ruby title="例"
class Fred
  @@foo = 99
end

def Fred.foo
  class_variable_get(:@@foo)
end

p Fred.foo #=> 99
```
