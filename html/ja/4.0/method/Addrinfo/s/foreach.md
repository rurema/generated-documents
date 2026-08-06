# Addrinfo.foreach

### def Addrinfo.foreach(nodename, service, family=nil, socktype=nil, protocol=nil, flags=0) -> Enumerator
### def Addrinfo.foreach(nodename, service, family=nil, socktype=nil, protocol=nil, flags=0){|addrinfo| ... } -> [Addrinfo]

[Addrinfo.getaddrinfo](../../../method/Addrinfo/s/getaddrinfo.md) で得られる配列の各要素を繰り返します。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **param** `nodename` -- ノード名文字列(ホスト名もしくは IP アドレス)
- **param** `service` -- サービス名(文字列もしくはポート番号の整数)
- **param** `family` -- プロトコルファミリー(整数、文字列、シンボル、もしくは nil)
- **param** `socktype` -- ソケットタイプ(整数、文字列、シンボル、もしくは nil)
- **param** `protocol` -- プロトコル(整数、もしくは nil)
- **param** `flags` -- フラグ(整数)
