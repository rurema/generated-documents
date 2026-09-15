# Socket::Option.byte

### def Socket::Option.byte(family, level, optname, integer) -> Socket::Option
{: since="2.1.0"}

1 バイトの整数をデータとして持つ `Socket::Option` オブジェクトを新たに生成し返します。

family, level, optname には Socket::SOL_SOCKET のような整数の他、文字列("SOL_SOCKET", "SOCKET")、シンボル(:SOL_SOCKET, :SOCKET)を指定できます。

- **param** `family` -- ソケットファミリー
- **param** `level` -- ソケットオプションレベル
- **param** `optname` -- オプションの名前
- **param** `integer` -- データ(1 バイトの整数)

```ruby
require 'socket'

p Socket::Option.byte(:INET, :SOCKET, :KEEPALIVE, 1)
# => #<Socket::Option: INET SOCKET KEEPALIVE "\x01">
```
