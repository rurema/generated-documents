# Socket::Ifaddr#broadaddr

### def broadaddr -> Addrinfo | nil

self のブロードキャストアドレスを [Addrinfo](../../../class/Addrinfo.md) オブジェクトで返します。
self.flags で [Socket::IFF_BROADCAST](../../../method/Socket/c/IFF_BROADCAST.md) が有効ではない場合は nil を返します。
