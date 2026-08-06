# class Addrinfo < Object

ソケットのアドレス情報を保持するクラスです。

ホスト/ポート番号/プロトコルなどを同定するために用いられます。
IPv4/IPv6/Unix domain socketなどのアドレス情報を保持できます。

struct addrinfo に対応します。

## Class Methods

- [foreach](../method/Addrinfo/s/foreach.md)
- [getaddrinfo](../method/Addrinfo/s/getaddrinfo.md)
- [ip](../method/Addrinfo/s/ip.md)
- [new](../method/Addrinfo/s/new.md)
- [tcp](../method/Addrinfo/s/tcp.md)
- [udp](../method/Addrinfo/s/udp.md)
- [unix](../method/Addrinfo/s/unix.md)

## Instance Methods

- [afamily](../method/Addrinfo/i/afamily.md)
- [bind](../method/Addrinfo/i/bind.md)
- [canonname](../method/Addrinfo/i/canonname.md)
- [connect](../method/Addrinfo/i/connect.md)
- [connect_from](../method/Addrinfo/i/connect_from.md)
- [connect_to](../method/Addrinfo/i/connect_to.md)
- [family_addrinfo](../method/Addrinfo/i/family_addrinfo.md)
- [getnameinfo](../method/Addrinfo/i/getnameinfo.md)
- [inspect_sockaddr](../method/Addrinfo/i/inspect_sockaddr.md)
- [ip?](../method/Addrinfo/i/ip=3f.md)
- [ip_address](../method/Addrinfo/i/ip_address.md)
- [ip_port](../method/Addrinfo/i/ip_port.md)
- [ip_unpack](../method/Addrinfo/i/ip_unpack.md)
- [ipv4?](../method/Addrinfo/i/ipv4=3f.md)
- [ipv4_loopback?](../method/Addrinfo/i/ipv4_loopback=3f.md)
- [ipv4_multicast?](../method/Addrinfo/i/ipv4_multicast=3f.md)
- [ipv4_private?](../method/Addrinfo/i/ipv4_private=3f.md)
- [ipv6?](../method/Addrinfo/i/ipv6=3f.md)
- [ipv6_linklocal?](../method/Addrinfo/i/ipv6_linklocal=3f.md)
- [ipv6_loopback?](../method/Addrinfo/i/ipv6_loopback=3f.md)
- [ipv6_mc_global?](../method/Addrinfo/i/ipv6_mc_global=3f.md)
- [ipv6_mc_linklocal?](../method/Addrinfo/i/ipv6_mc_linklocal=3f.md)
- [ipv6_mc_nodelocal?](../method/Addrinfo/i/ipv6_mc_nodelocal=3f.md)
- [ipv6_mc_orglocal?](../method/Addrinfo/i/ipv6_mc_orglocal=3f.md)
- [ipv6_mc_sitelocal?](../method/Addrinfo/i/ipv6_mc_sitelocal=3f.md)
- [ipv6_multicast?](../method/Addrinfo/i/ipv6_multicast=3f.md)
- [ipv6_sitelocal?](../method/Addrinfo/i/ipv6_sitelocal=3f.md)
- [ipv6_to_ipv4](../method/Addrinfo/i/ipv6_to_ipv4.md)
- [ipv6_unique_local?](../method/Addrinfo/i/ipv6_unique_local=3f.md)
- [ipv6_unspecified?](../method/Addrinfo/i/ipv6_unspecified=3f.md)
- [ipv6_v4compat?](../method/Addrinfo/i/ipv6_v4compat=3f.md)
- [ipv6_v4mapped?](../method/Addrinfo/i/ipv6_v4mapped=3f.md)
- [listen](../method/Addrinfo/i/listen.md)
- [pfamily](../method/Addrinfo/i/pfamily.md)
- [protocol](../method/Addrinfo/i/protocol.md)
- [socktype](../method/Addrinfo/i/socktype.md)
- [to_s](../method/Addrinfo/i/to_s.md)
- [to_sockaddr](../method/Addrinfo/i/to_sockaddr.md)
- [unix?](../method/Addrinfo/i/unix=3f.md)
- [unix_path](../method/Addrinfo/i/unix_path.md)
