# Socket::Ifaddr#dstaddr

### def dstaddr -> Addrinfo | nil

self の宛先アドレスを [Addrinfo](../../../class/Addrinfo.md) オブジェクトで返します。
self.flags で [Socket::IFF_POINTOPOINT](../../../method/Socket/c/IFF_POINTOPOINT.md) が有効ではない場合は nil を返します。
