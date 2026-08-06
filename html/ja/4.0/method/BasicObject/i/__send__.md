# BasicObject#__send__

### def __send__(name, *args) -> object
### def __send__(name, *args) { .... } -> object

オブジェクトのメソッド name を args を引数にして呼び出し、メソッドの結果を返します。

ブロック付きで呼ばれたときはブロックもそのまま引き渡します。

- **param** `name` -- 呼び出すメソッドの名前。 [Symbol](../../../class/Symbol.md) または文字列で指定します。
- **param** `args` -- メソッドに渡す任意個の引数

```ruby title="例"
class Mail
  def delete(*args)
    "(Mail#delete) - delete " + args.join(',')
  end
  def send(name, *args)
    "(Mail#send) - #{name} #{args.join(',')}"
  end
end
mail = Mail.new
p mail.send :delete, "gentle", "readers"     # => "(Mail#send) - delete gentle,readers"
p mail.__send__ :delete, "gentle", "readers" # => "(Mail#delete) - delete gentle,readers"
```

- **SEE** [Object#send](../../../method/Object/i/send.md)
