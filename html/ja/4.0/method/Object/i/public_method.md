# Object#public_method

### def public_method(name) -> Method

オブジェクトの public メソッド name をオブジェクト化した
[Method](../../../class/Method.md) オブジェクトを返します。

- **param** `name` -- メソッド名を [Symbol](../../../class/Symbol.md) または [String](../../../class/String.md) で指定します。
- **raise** `NameError` -- 定義されていないメソッド名や、
       protected メソッド名、 private メソッド名を引数として与えると発生します。

```ruby
p 1.public_method(:to_int) #=> #<Method: Integer#to_int>
1.public_method(:p)      #   method 'p' for class 'Integer' is private (NameError)
```

- **SEE** [Object#method](../../../method/Object/i/method.md),[Object#public_send](../../../method/Object/i/public_send.md),[Module#public_instance_method](../../../method/Module/i/public_instance_method.md)
