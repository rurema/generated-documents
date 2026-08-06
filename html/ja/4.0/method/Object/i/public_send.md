# Object#public_send

### def public_send(name, *args) -> object
### def public_send(name, *args) { .... } -> object

オブジェクトの public メソッド name を args を引数にして呼び出し、メソッドの実行結果を返します。

ブロック付きで呼ばれたときはブロックもそのまま引き渡します。

```ruby
p 1.public_send(:+, 2)  # => 3
```

- **param** `name` -- 文字列か[Symbol](../../../class/Symbol.md) で指定するメソッド名です。

- **param** `args` -- 呼び出すメソッドに渡す引数です。

- **raise** `ArgumentError` -- name を指定しなかった場合に発生します。

- **raise** `NoMethodError` -- protected メソッドや private メソッドに対して実行
                     した場合に発生します。

```ruby
1.public_send(:puts, "hello")  # ~> NoMethodError
```

- **SEE** [BasicObject#__send__](../../../method/BasicObject/i/__send__.md), [Object#send](../../../method/Object/i/send.md)
