# class DRb::DRbUNIXSocket < Object

drbunix: という形式の URI を使い、UNIX ドメインソケット経由で通信するプロトコル実装クラスです。[drb/unix](../library/drb=2funix.md) を require すると、
[DRb::DRbProtocol?.add_protocol](../method/DRb=3a=3aDRbProtocol/m/add_protocol.md) によって自動的に drb に登録されます。

内部的には、druby:// (TCP/IP) 用のプロトコル実装クラスである
DRbTCPSocket のサブクラスとして実装されています。

プロトコル実装クラスに要求されるインターフェースについては
[DRb::DRbProtocol](../class/DRb=3a=3aDRbProtocol.md) を参照してください。通常、ユーザーがこのクラスのメソッドを直接呼び出すことはありません。

## Class Methods

- [open](../method/DRb=3a=3aDRbUNIXSocket/s/open.md)
- [open_server](../method/DRb=3a=3aDRbUNIXSocket/s/open_server.md)
- [uri_option](../method/DRb=3a=3aDRbUNIXSocket/s/uri_option.md)

## Instance Methods

- [accept](../method/DRb=3a=3aDRbUNIXSocket/i/accept.md)
- [close](../method/DRb=3a=3aDRbUNIXSocket/i/close.md)
- [uri](../method/DRb=3a=3aDRbUNIXSocket/i/uri.md)
