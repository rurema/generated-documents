# Object#singleton_method

### def singleton_method(name) -> Method

オブジェクトの特異メソッド name をオブジェクト化した [Method](../../../class/Method.md) オブジェクトを返します。

特異クラスに include / prepend されたモジュールのインスタンスメソッド（例えば [Object#extend](../../../method/Object/i/extend.md) で追加したモジュールのメソッド）も対象になります。

- **param** `name` -- メソッド名を[Symbol](../../../class/Symbol.md) または[String](../../../class/String.md)で指定します。
- **raise** `NameError` -- 定義されていないメソッド名を引数として与えると発生します。

```ruby
class Demo
  def initialize(n)
    @iv = n
  end
  def hello()
    "Hello, @iv = #{@iv}"
  end
end

k = Demo.new(99)
def k.hi
  "Hi, @iv = #{@iv}"
end
m = k.singleton_method(:hi)    # => #<Method: #<Demo:0xf8b0c3c4 @iv=99>.hi>
p m.call #=> "Hi, @iv = 99"
m = k.singleton_method(:hello) # ~> NameError
```


```ruby title="例: extend で追加したモジュールのメソッド"
o = Object.new
o.extend(Module.new { def a = 1 })
p o.singleton_method(:a).call # => 1
```


- **SEE** [Module#instance_method](../../../method/Module/i/instance_method.md), [Method](../../../class/Method.md), [BasicObject#__send__](../../../method/BasicObject/i/__send__.md), [Object#send](../../../method/Object/i/send.md), [Kernel?.eval](../../../method/Kernel/m/eval.md), [Object#method](../../../method/Object/i/method.md)
