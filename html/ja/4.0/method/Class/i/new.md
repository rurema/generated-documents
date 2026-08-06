# Class#new

### def new(*args, &block)    -> object

自身のインスタンスを生成して返します。
このメソッドの引数はブロック引数も含め [Object#initialize](../../../method/Object/i/initialize.md) に渡されます。

new は [Class#allocate](../../../method/Class/i/allocate.md) でインスタンスを生成し、
[Object#initialize](../../../method/Object/i/initialize.md) で初期化を行います。

- **param** `args` -- [Object#initialize](../../../method/Object/i/initialize.md) に渡される引数を指定します。

- **param** `block` -- [Object#initialize](../../../method/Object/i/initialize.md) に渡されるブロックを指定します。

```ruby title="例"
# [[c:Class]] クラスのインスタンス、C クラスを生成
C = Class.new   # => C

# [[c:Class]] クラスのインスタンス、C クラスのインスタンスを生成
p C.new         # => #<C:0x00005623f8b4e458>
```
