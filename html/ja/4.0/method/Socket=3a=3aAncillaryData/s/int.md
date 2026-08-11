# Socket::AncillaryData.int

### def Socket::AncillaryData.int(family, cmsg_level, cmsg_type, integer) -> Socket::AncillaryData

データとして整数を保持する
Socket::AncillaryData オブジェクトを生成します。

整数データのサイズおよびエンディアンは実行するホストによって異なります。

```ruby
require 'socket'

p Socket::AncillaryData.int(:UNIX, :SOCKET, :RIGHTS, STDERR.fileno)
# => #<Socket::AncillaryData: UNIX SOCKET RIGHTS 2>
```

- **param** `family` -- ソケットファミリー
- **param** `cmsg_level` -- プロトコル
- **param** `cmsg_type` -- 補助データの種類
- **param** `integer` -- データ内容

- **SEE** [Socket::AncillaryData.new](../../../method/Socket=3a=3aAncillaryData/s/new.md)
