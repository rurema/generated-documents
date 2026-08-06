# Module#class_variable_set

### def class_variable_set(name, val) -> object

クラス／モジュールにクラス変数 name を定義して、その値として
val をセットします。val を返します。

- **param** `name` -- [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。

```ruby title="例"
class Fred
  @@foo = 99
  def foo
    @@foo
  end
end

def Fred.foo(val)
  class_variable_set(:@@foo, val)
end

p Fred.foo(101)   # => 101
p Fred.new.foo    # => 101
```
