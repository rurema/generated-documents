# main.define_method

### def main.define_method(name, method) -> Symbol
### def main.define_method(name) { ... } -> Symbol
{: since="2.0.0"}

インスタンスメソッド name を [Object](../../../class/Object.md) に定義します。

ブロックを与えた場合、定義したメソッドの実行時にブロックが
[Object](../../../class/Object.md) インスタンスの上で [BasicObject#instance_eval](../../../method/BasicObject/i/instance_eval.md) されます。

- **param** `name` -- [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。

- **param** `method` -- [Proc](../../../class/Proc.md)、[Method](../../../class/Method.md) あるいは [UnboundMethod](../../../class/UnboundMethod.md) の
              いずれかのインスタンスを指定します。

- **return** -- メソッド名を表す [Symbol](../../../class/Symbol.md) を返します。

- **raise** `TypeError` -- method に同じクラス、サブクラス以外のメソッドを指定し
                 た場合に発生します。


- **SEE** [Module#define_method](../../../method/Module/i/define_method.md)
