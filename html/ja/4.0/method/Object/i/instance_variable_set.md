# Object#instance_variable_set

### def instance_variable_set(var, value) -> object

オブジェクトのインスタンス変数 var に値 value を設定します。

インスタンス変数が定義されていなければ新たに定義されます。

- **param** `var` -- インスタンス変数名を文字列か [Symbol](../../../class/Symbol.md) で指定します。
- **param** `value` -- 設定する値です。
- **return** -- value を返します。

```ruby
obj = Object.new
p obj.instance_variable_set("@foo", 1)  # => 1
p obj.instance_variable_set(:@foo, 2)   # => 2
p obj.instance_variable_get(:@foo)      # => 2
```

- **SEE** [Object#instance_variable_get](../../../method/Object/i/instance_variable_get.md),[Object#instance_variables](../../../method/Object/i/instance_variables.md),[Object#instance_variable_defined?](../../../method/Object/i/instance_variable_defined=3f.md)
