# Socket::Option.new

### def Socket::Option.new(family, level, optname, data) -> Socket::Option

Socket::Option オブジェクト新たに生成し返します。

family, level, optname には Socket::SOL_SOCKET のような整数の他、文字列("SOL_SOCKET", "SOCKET")、シンボル(:SOL_SOCKET, :SOCKET)を指定できます。

- **param** `family` -- ソケットファミリー
- **param** `level` -- ソケットオプションレベル
- **param** `optname` -- オプションの名前
- **param** `data` -- データ(文字列)

- **SEE** [Socket::Option.int](../../../method/Socket=3a=3aOption/s/int.md), [Socket::Option.bool](../../../method/Socket=3a=3aOption/s/bool.md), [Socket::Option.linger](../../../method/Socket=3a=3aOption/s/linger.md)

```ruby
require 'socket'

sockopt = Socket::Option.new(:INET, :SOCKET, :KEEPALIVE, [1].pack("i"))
p sockopt #=> #<Socket::Option: INET SOCKET KEEPALIVE 1>
```
