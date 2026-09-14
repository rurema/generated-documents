# Socket.tcp_fast_fallback

### def Socket.tcp_fast_fallback -> bool
### def Socket.tcp_fast_fallback=(enable)

Happy Eyeballs Version 2([rfc:8305])を [TCPSocket.new](../../../method/TCPSocket/s/new.md) と [Socket.tcp](../../../method/Socket/s/tcp.md) で既定で有効にするかどうかを取得・設定します。

`true` にすると、[TCPSocket.new](../../../method/TCPSocket/s/new.md) と [Socket.tcp](../../../method/Socket/s/tcp.md) の両方で Happy Eyeballs Version 2 が有効になります(Windows では [TCPSocket.new](../../../method/TCPSocket/s/new.md) はこのアルゴリズムに対応していません)。`false` にすると Ruby 3.3 以前の動作に戻ります。

明示的に設定しなければ既定値は `true` です。

ただし、環境変数 `RUBY_TCP_NO_FAST_FALLBACK=1` が設定されている場合、既定値は `false` になります。

メソッド呼び出しごとに制御したい場合は、各メソッドのキーワード引数 `fast_fallback` を使ってください。

- **param** `enable` -- `true` なら Happy Eyeballs Version 2 を有効に、`false` なら無効にします。

```ruby
require 'socket'

p Socket.tcp_fast_fallback   # => true

Socket.tcp_fast_fallback = false
p Socket.tcp_fast_fallback   # => false
```

- **SEE** [Socket.tcp](../../../method/Socket/s/tcp.md)
- **SEE** [TCPSocket.new](../../../method/TCPSocket/s/new.md)
