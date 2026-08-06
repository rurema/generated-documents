# BasicSocket#send

### def send(mesg, flags, dest_sockaddr = nil) -> Integer

ソケットを介してデータを送ります。flags に関しては
[man:send(2)] を参照してください。connect していないソケットに対しては送り先である dest_sockaddr を指定する必要があります。実際に送ったデータの長さを返します。

dest_sockaddr には[socket#pack_string](../../../library/socket.md#pack_string)
を指定します。

データの送信に失敗した場合は例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。

- **param** `mesg` --       送信するデータを文字列で指定します。

- **param** `flags` --      [man:send(2)] の flags を参照してください。

- **param** `dest_sockaddr` --  [socket#pack_string](../../../library/socket.md#pack_string)を指定します。

- **raise** `Errno::EXXX` -- データの送信に失敗した場合に発生します。

```ruby title="例"
require 'socket'

s = UDPSocket.new
sockaddr = Socket.sockaddr_in("discard", "localhost")
s.send("The king has donkey ears!", 0, sockaddr)
```
