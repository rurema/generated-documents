# Object#instance_variable_get

### def instance_variable_get(var) -> object | nil

オブジェクトのインスタンス変数の値を取得して返します。

インスタンス変数が定義されていなければ nil を返します。

- **param** `var` -- インスタンス変数名を文字列か [Symbol](../../../class/Symbol.md) で指定します。

```ruby
class Foo
  def initialize
    @foo = 1
  end
end

obj = Foo.new
p obj.instance_variable_get("@foo")     #=> 1
p obj.instance_variable_get(:@foo)      #=> 1
p obj.instance_variable_get(:@bar)      #=> nil
```

- **SEE** [Object#instance_variable_set](../../../method/Object/i/instance_variable_set.md),[Object#instance_variables](../../../method/Object/i/instance_variables.md),[Object#instance_variable_defined?](../../../method/Object/i/instance_variable_defined=3f.md)
