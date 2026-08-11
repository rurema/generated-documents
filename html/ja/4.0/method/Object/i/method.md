# Object#method

### def method(name) -> Method

オブジェクトのメソッド name をオブジェクト化した
[Method](../../../class/Method.md) オブジェクトを返します。

- **param** `name` -- メソッド名を[Symbol](../../../class/Symbol.md) または[String](../../../class/String.md)で指定します。
- **raise** `NameError` -- 定義されていないメソッド名を引数として与えると発生します。

```ruby
me = -365.method(:abs)
p me # => #<Method: Integer#abs>
p me.call # => 365
```

[Method](../../../class/Method.md)・[UnboundMethod](../../../class/UnboundMethod.md) オブジェクトを取得するメソッドの対比は次のとおりです。

| メソッド | 対象 | 可視性の制限 | 返り値 |
| --- | --- | --- | --- |
| [Object#method](../../../method/Object/i/method.md) | レシーバのメソッド（特異メソッドを含む） | なし | [Method](../../../class/Method.md) |
| [Object#public_method](../../../method/Object/i/public_method.md) | レシーバのメソッド（特異メソッドを含む） | public のみ | [Method](../../../class/Method.md) |
| [Object#singleton_method](../../../method/Object/i/singleton_method.md) | レシーバの特異メソッドのみ | なし | [Method](../../../class/Method.md) |
| [Module#instance_method](../../../method/Module/i/instance_method.md) | self のインスタンスメソッド | なし | [UnboundMethod](../../../class/UnboundMethod.md) |
| [Module#public_instance_method](../../../method/Module/i/public_instance_method.md) | self のインスタンスメソッド | public のみ | [UnboundMethod](../../../class/UnboundMethod.md) |

[UnboundMethod](../../../class/UnboundMethod.md) はレシーバに束縛されていない状態のメソッドオブジェクトです。[UnboundMethod#bind](../../../method/UnboundMethod/i/bind.md) でレシーバに束縛すると [Method](../../../class/Method.md) になり、逆に [Method#unbind](../../../method/Method/i/unbind.md) で [UnboundMethod](../../../class/UnboundMethod.md) に戻せます。

- **SEE** [Module#instance_method](../../../method/Module/i/instance_method.md), [Method](../../../class/Method.md), [BasicObject#__send__](../../../method/BasicObject/i/__send__.md), [Object#send](../../../method/Object/i/send.md), [Kernel?.eval](../../../method/Kernel/m/eval.md), [Object#singleton_method](../../../method/Object/i/singleton_method.md)
