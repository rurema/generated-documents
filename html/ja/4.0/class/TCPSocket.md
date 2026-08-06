# class TCPSocket < IPSocket

インターネットドメインのストリーム型ソケットのクラスです。

通常の[IO](../class/IO.md) クラスのサブクラスと同様の入出力ができます。このクラスによってソケットを用いたクライアントを簡単に記述できるようになります。

ユーザの入力をそのままサーバに転送するプログラムは以下のようになります。

```ruby
require "socket"
  
port = if ARGV.size > 0 then ARGV.shift else 4444 end
print port, "\n"
  
s = TCPSocket.open("localhost", port)
  
while gets
  s.write($_)
  print(s.gets)
end
s.close
```

## Class Methods

- [gethostbyname](../method/TCPSocket/s/gethostbyname.md)
- [new](../method/TCPSocket/s/new.md)
- [open](../method/TCPSocket/s/open.md)
- [new](../method/TCPSocket/s/new.md)
- [open](../method/TCPSocket/s/open.md)
