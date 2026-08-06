# Socket::EAI_MEMORY

### const EAI_MEMORY -> Integer

Memory allocation failure

[man:getaddrinfo(3)], [man:getnameinfo(3)] などのエラーコードです。
対応する [Socket.getaddrinfo](../../../method/Socket/s/getaddrinfo.md), [Addrinfo.getaddrinfo](../../../method/Addrinfo/s/getaddrinfo.md) などはエラーを [SocketError](../../../class/SocketError.md) に変換するため、この定数は直接は利用しません。

- **SEE** [man:getaddrinfo(3linux)], [man:gai_strerror(3freebsd)]
