# Object#freeze

### def freeze -> self

オブジェクトを凍結（内容の変更を禁止）します。

凍結されたオブジェクトの変更は例外 [FrozenError](../../../class/FrozenError.md) を発生させます。
いったん凍結されたオブジェクトを元に戻す方法はありません。

凍結されるのはオブジェクトであり、変数ではありません。代入などで変数の指すオブジェクトが変化してしまうことは freeze では防げません。 freeze が防ぐのは、
`破壊的な操作` と呼ばれるもの一般です。変数への参照自体を凍結したい場合は、グローバル変数なら [Kernel?.trace_var](../../../method/Kernel/m/trace_var.md) が使えます。

- **return** -- self を返します。

```ruby
a1 = "foo".freeze
a1 = "bar"
p a1 # => "bar"

a2 = "foo".freeze
a2.replace("bar") # can't modify frozen String (FrozenError)
```

凍結を解除することはできませんが、[Object#dup](../../../method/Object/i/dup.md) を使えばほぼ同じ内容の凍結されていないオブジェクトを得ることはできます。

```ruby
a = [1].freeze
p a.frozen?     # => true

a[0] = "foo"
p a             # can't modify frozen Array (FrozenError)

b = a.dup
p b             # => [1]
p b.frozen?     # => false

b[0] = "foo"
p b             # => ["foo"]
```

- **SEE** [Object#frozen?](../../../method/Object/i/frozen=3f.md),[Object#dup](../../../method/Object/i/dup.md),[Kernel?.trace_var](../../../method/Kernel/m/trace_var.md)
