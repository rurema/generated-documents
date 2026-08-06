# Fiber#storage=

### def storage -> Hash | nil
### def storage=(hash)

`self` が表すファイバーの fiber storage を取得、設定します。

fiber storage はファイバーごとに持てる記憶領域です。
[Fiber.new](../../../method/Fiber/s/new.md) で生成したファイバーには複製が引き継がれます。
スレッドローカル変数がすべてのファイバーで共有されるのに対し、
fiber storage はファイバーを起点とする実行単位の中だけで共有されます。
リクエスト ID やロガーの設定のように、暗黙のうちに引き回したい状態に向いています。

個々の値の読み書きには [Fiber.\[\]](../../../method/Fiber/s/=5b=5d.md) と [Fiber.\[\]=](../../../method/Fiber/s/=5b=5d=3d.md) を使います。
storage が返すのは複製なので、返り値を変更しても fiber storage には反映されません。
まだ fiber storage を持たない場合は nil を返します。

storage= は実験的な機能です。呼び出すと実験的な機能である旨の警告が出ます。
警告は `-W:no-experimental` オプションで抑制できます。

- **param** `hash` -- 設定する [Hash](../../../class/Hash.md) を指定します。キーは [Symbol](../../../class/Symbol.md) で指定します。
  nil を指定すると fiber storage を空にします。
- **return** -- storage は fiber storage の複製を返します。
- **raise** `ArgumentError` -- [Fiber.current](../../../method/Fiber/s/current.md) 以外のファイバーに対して呼んだ場合に発生します。

```ruby title="例: 取得"
Fiber[:key] = 1
p Fiber.current.storage # => {key: 1}

# 返り値は複製なので、変更しても fiber storage には影響しない
Fiber.current.storage[:key] = 2
p Fiber[:key]           # => 1
```

```ruby title="例: 設定"
Fiber[:key] = 1

Fiber.current.storage = {other: 2} # 実験的な機能である旨の警告が出る
p Fiber[:key]   # => nil
p Fiber[:other] # => 2
```

- **SEE** [Fiber.new](../../../method/Fiber/s/new.md)
