# Socket::AncillaryData#timestamp

### def timestamp -> Time

タイムスタンプ制御メッセージに含まれる時刻を [Time](../../../class/Time.md) オブジェクトで返します。

"タイムスタンプ制御メッセージ" は以下のいずれかです。
  -  SOL_SOCKET/SCM_TIMESTAMP (micro second) GNU/Linux, FreeBSD, NetBSD, OpenBSD, Solaris, MacOS X
  -  SOL_SOCKET/SCM_TIMESTAMPNS (nano second) GNU/Linux
  -  SOL_SOCKET/SCM_BINTIME (2**(-64) second) FreeBSD

```ruby
require 'socket'

Addrinfo.udp("127.0.0.1", 0).bind {|s1|
  Addrinfo.udp("127.0.0.1", 0).bind {|s2|
    s1.setsockopt(:SOCKET, :TIMESTAMP, true)
    s2.send "a", 0, s1.local_address
    ctl = s1.recvmsg.last
    p ctl    
    #=> #<Socket::AncillaryData: INET SOCKET TIMESTAMP 2009-02-24 17:35:46.775581>
    t = ctl.timestamp
    p t      #=> 2009-02-24 17:35:46 +0900
    p t.usec #=> 775581
    p t.nsec #=> 775581000
  }
}
```

- **SEE** [Socket::Constants::SCM_TIMESTAMP](../../../method/Socket=3a=3aConstants/c/SCM_TIMESTAMP.md),
     [Socket::Constants::SCM_TIMESTAMPNS](../../../method/Socket=3a=3aConstants/c/SCM_TIMESTAMPNS.md),
     [Socket::Constants::SCM_BINTIME](../../../method/Socket=3a=3aConstants/c/SCM_BINTIME.md),
     [Socket::Constants::SO_TIMESTAMP](../../../method/Socket=3a=3aConstants/c/SO_TIMESTAMP.md),
     [Socket::Constants::SO_TIMESTAMPNS](../../../method/Socket=3a=3aConstants/c/SO_TIMESTAMPNS.md),
     [Socket::Constants::SO_BINTIME](../../../method/Socket=3a=3aConstants/c/SO_BINTIME.md)
