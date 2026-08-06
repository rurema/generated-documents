# Socket::Constants::EAI_NONAME

### const EAI_NONAME -> Integer

Hostname nor servname, or not known

[man:getaddrinfo(3)], [man:getnameinfo(3)] などのエラーコードです。
対応する [Socket.getaddrinfo](../../../method/Socket/s/getaddrinfo.md), [Addrinfo.getaddrinfo](../../../method/Addrinfo/s/getaddrinfo.md) などはエラーを [SocketError](../../../class/SocketError.md) に変換するため、この定数は直接は利用しません。

- **SEE** [man:getaddrinfo(3linux)], [man:gai_strerror(3freebsd)]
