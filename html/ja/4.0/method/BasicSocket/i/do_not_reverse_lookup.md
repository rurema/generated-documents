# BasicSocket#do_not_reverse_lookup

### def do_not_reverse_lookup -> bool

ソケットごとのアドレスからホスト名への逆引きの設定を返します。

真ならアドレスからホスト名への逆引きを行いません。

初期値はソケットを生成したときの
[BasicSocket.do_not_reverse_lookup](../../../method/BasicSocket/s/do_not_reverse_lookup.md) の値になります。

```ruby
require 'socket'

BasicSocket.do_not_reverse_lookup = false
TCPSocket.open("www.ruby-lang.org", 80) {|sock|
  p sock.do_not_reverse_lookup      # => false
}
BasicSocket.do_not_reverse_lookup = true
TCPSocket.open("www.ruby-lang.org", 80) {|sock|
  p sock.do_not_reverse_lookup      # => true
}
```

- **SEE** [BasicSocket#do_not_reverse_lookup=](../../../method/BasicSocket/i/do_not_reverse_lookup=3d.md)
