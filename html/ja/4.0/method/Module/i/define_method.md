# Module#define_method

### def define_method(name, method) -> Symbol
### def define_method(name) { ... } -> Symbol

インスタンスメソッド name を定義します。

ブロックを与えた場合、定義したメソッドの実行時にブロックがレシーバクラスのインスタンスの上で [BasicObject#instance_eval](../../../method/BasicObject/i/instance_eval.md) されます。

- **param** `name` -- メソッド名を [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。

- **param** `method` -- [Proc](../../../class/Proc.md)、[Method](../../../class/Method.md) あるいは [UnboundMethod](../../../class/UnboundMethod.md) の
       いずれかのインスタンスを指定します。

- **return** -- メソッド名を表す [Symbol](../../../class/Symbol.md) を返します。

- **raise** `TypeError` -- method に同じクラス、サブクラス、モジュール以外のメソッ
                 ドを指定した場合に発生します。

```ruby title="例"
class Foo
  def foo() p :foo end
  define_method(:bar, instance_method(:foo))
end
p Foo.new.bar  # => :foo
```
