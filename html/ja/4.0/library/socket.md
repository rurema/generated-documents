# library socket

socket はプロセス外部との通信 (プロセス間通信、ホスト間通信) を実現します。

### ソケットアドレス

ソケットというのは通信路の末端です。
たとえば 1対1 の通信では、まず通信路の両端にひとつずつソケットをつくり、それらのソケットを接続することによって通信路が確立し、相互に通信できるようになります。
この接続時に、一方のソケットにもう一方のソケットの場所を教えてやる必要がありますが、この場所を指定するものがソケットアドレスです。

ソケットアドレスはソケットの種類によって中身が異なります。
たとえば TCP では IP アドレスとポート番号ですし、
Unix ドメインソケットではソケットファイルを指すパス名です。

ソケットアドレスを取り扱うための便利で高水準なクラスとして [Addrinfo](../class/Addrinfo.md) があります。

[IPSocket](../class/IPSocket.md) および [UNIXSocket](../class/UNIXSocket.md) 以下のクラス階層では、わざわざソケットアドレスという形式にまとめなくてもよいよう、ソケットアドレスの中身を直接扱えるメソッドが用意されています。

また、[IPSocket](../class/IPSocket.md) 以下での IP アドレスとポート番号の指定は、数値で表現するだけでなく、ホスト名やサービス名が使えます。
これについては以下の「ホスト指定形式」と「サービス指定形式」を参照してください。

また、C のレベルの「ソケットアドレス構造体を pack した文字列」も使用できます。
これは主に低レベルソケットインターフェース ([Socket](../class/Socket.md)) で用いられます。

#### ホスト指定形式 {#host_format}

AF_INET なソケットにおいてホストを指定するには以下のいずれかの形式を指定します。

  - ホスト名 (例: "localhost")
  - octet decimalによるIPアドレス(文字列) (例: "127.0.0.1")
  - 空文字列 (""), 文字列 "<any>" - INADDR_ANYに相当
  - 文字列 "::" - IN6ADDR_ANY_INIT に相当
  - 文字列 "<broadcast>" - INADDR_BROADCASTに相当
  - IPアドレスを表す 32bit の整数 (例: 0x7f000001)

#### サービス指定形式 {#service_format}

サービスを指定するには以下のいずれかの形式を指定します。

  - ポート番号(整数または文字列) (例: 21, "21")
  - サービス名 (例: "ftp")

#### ソケットアドレス構造体を pack した文字列 {#pack_string}

ソケットアドレス構造体とは、C 言語の構造体 struct sockaddr_in (IPv4)
や struct sockaddr_un (Unix ドメイン)を指します。
[Socket](../class/Socket.md) クラスなどソケットの低レベルインタフェースで利用されます。

[Socket.pack_sockaddr_in](../method/Socket/s/pack_sockaddr_in.md),
[Socket.unpack_sockaddr_in](../method/Socket/s/unpack_sockaddr_in.md) といったメソッドにより、例えば、以下のようにしてこの文字列を得ることが出来ます

```text
require 'socket'
p Socket.pack_sockaddr_in("echo", "127.0.0.1")
=> "\002\000\000\a\177\000\000\001\000\000\000\000\000\000\000\000"
```

### ホスト名と IP アドレスの変換

ホスト名から IP アドレスへの変換 (正引き) を行うメソッドは以下のものが用意されています。

  - [`Addrinfo.getaddrinfo("www.ruby-lang.org", "http")`](../method/Addrinfo/s/getaddrinfo.md) =>  [#<Addrinfo: 221.186.184.68:80 TCP (www.ruby-lang.org:http)>]
  - [`IPSocket.getaddress("www.ruby-lang.org")`](../method/IPSocket/s/getaddress.md) => "210.163.138.100"
  - [`TCPSocket.gethostbyname("www.ruby-lang.org")`](../method/TCPSocket/s/gethostbyname.md) => ["beryllium.ruby-lang.org", [], 2, "210.163.138.100"]
  - [`Socket.gethostbyname("www.ruby-lang.org")`](../method/Socket/s/gethostbyname.md) => ["beryllium.ruby-lang.org", [], 2, "\322\243\212d"]
  - [`Socket.getaddrinfo("www.ruby-lang.org", "http")`](../method/Socket/s/getaddrinfo.md) => [["AF_INET", 80, "beryllium.ruby-lang.org", "210.163.138.100", 2, 1, 6]]

逆に IP アドレスからホスト名への変換 (逆引き) を行うメソッドは以下のものが用意されています。

  - [Socket.getnameinfo](../method/Socket/s/getnameinfo.md)([nil, nil, nil, "210.163.138.100"]) => ["beryllium.ruby-lang.org", 0]
  - [Addrinfo#getnameinfo](../method/Addrinfo/i/getnameinfo.md) Addrinfo.ip("127.0.0.1").getnameinfo => ["localhost", "0"]

また、[resolv](../library/resolv.md) ライブラリも使用できます。
