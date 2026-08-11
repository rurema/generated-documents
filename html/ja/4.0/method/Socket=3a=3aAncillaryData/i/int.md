# Socket::AncillaryData#int

### def int -> Integer

自身が保持している cmsg data (データ) を整数の形で返します。

整数データのサイズおよびエンディアンは実行するホストによって異なります。

```ruby
require 'socket'

ancdata = Socket::AncillaryData.int(:UNIX, :SOCKET, :RIGHTS, STDERR.fileno)
p ancdata.int # => 2
```

- **raise** `TypeError` -- cmgs data のサイズが int のバイト数と異なる場合に発生します
- **SEE** [Socket::AncillaryData.new](../../../method/Socket=3a=3aAncillaryData/s/new.md) [Socket::AncillaryData.int](../../../method/Socket=3a=3aAncillaryData/s/int.md)
