# Fiber#storage=

### def storage=(hash)

`self` が表すファイバーの fiber storage を設定します。
fiber storage については [Fiber#storage](../../../method/Fiber/i/storage.md) を参照してください。

storage= は実験的な機能です。呼び出すと実験的な機能である旨の警告が出ます。
警告は `-W:no-experimental` オプションで抑制できます。

- **param** `hash` -- 設定する [Hash](../../../class/Hash.md) を指定します。キーは [Symbol](../../../class/Symbol.md) で指定します。
  nil を指定すると fiber storage を空にします。
- **raise** `ArgumentError` -- [Fiber.current](../../../method/Fiber/s/current.md) 以外のファイバーに対して呼んだ場合に発生します。

```ruby title="例"
Fiber[:key] = 1

Fiber.current.storage = {other: 2} # 実験的な機能である旨の警告が出る
p Fiber[:key]   # => nil
p Fiber[:other] # => 2
```

- **SEE** [Fiber.new](../../../method/Fiber/s/new.md), [Fiber#storage](../../../method/Fiber/i/storage.md)
