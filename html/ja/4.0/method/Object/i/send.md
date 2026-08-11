# Object#send

### def send(name, *args) -> object
### def send(name, *args) { .... } -> object

オブジェクトのメソッド name を args を引数にして呼び出し、メソッドの実行結果を返します。

ブロック付きで呼ばれたときはブロックもそのまま引き渡します。

send が再定義された場合に備えて別名 `__send__` も用意されており、ライブラリではこちらを使うべきです。また
`__send__` は再定義すべきではありません。

send, `__send__` は、メソッドの呼び出し制限にかかわらず任意のメソッドを呼び出せます。
[spec/def#limit](../../../doc/spec=2fdef.md#limit) も参照してください。

public メソッドだけ呼び出せれば良い場合は
[Object#public_send](../../../method/Object/i/public_send.md) を使う方が良いでしょう。

- **param** `name` -- 文字列か[Symbol](../../../class/Symbol.md) で指定するメソッド名です。
- **param** `args` -- 呼び出すメソッドに渡す引数です。

```ruby
p -365.send(:abs) # => 365
p "ruby".send(:sub,/./,"R") # => "Ruby"


class Foo
  def foo() "foo" end
  def bar() "bar" end
  def baz() "baz" end
end

# 任意のキーとメソッド(の名前)の関係をハッシュに保持しておく
# レシーバの情報がここにはないことに注意
methods = {1 => :foo,
  2 => :bar,
  3 => :baz}

# キーを使って関連するメソッドを呼び出す
# レシーバは任意(Foo クラスのインスタンスである必要もない)
p Foo.new.send(methods[1])      # => "foo"
p Foo.new.send(methods[2])      # => "bar"
p Foo.new.send(methods[3])      # => "baz"
```

- **SEE** [Object#public_send](../../../method/Object/i/public_send.md), [BasicObject#__send__](../../../method/BasicObject/i/__send__.md), [Object#method](../../../method/Object/i/method.md), [Kernel?.eval](../../../method/Kernel/m/eval.md), [Proc](../../../class/Proc.md), [Method](../../../class/Method.md)
