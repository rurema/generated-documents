# Socket::Option#ipv4_multicast_loop

### def ipv4_multicast_loop -> Integer

オプションが IPPROTO_IP/IP_MULTICAST_LOOP である場合に、オプションのデータ(内容)を整数に変換して返します。

- **raise** `TypeError` -- family が AF_INET でない、または level/optname が IPPROTO_IP/IP_MULTICAST_LOOP でない場合に発生します
- **SEE** [Socket::Option#data](../../../method/Socket=3a=3aOption/i/data.md)
