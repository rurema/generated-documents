# Socket#connect_nonblock

### def connect_nonblock(server_sockaddr) -> 0

ソケットをノンブロッキングモードに設定した後、
[man:connect(2)] を呼び出します。

引数、返り値は [Socket#connect](../../../method/Socket/i/connect.md) と同じです。

connect が EINPROGRESS エラーを報告した場合、その例外(Errno::EINPROGRESS)
には [IO::WaitWritable](../../../class/IO=3a=3aWaitWritable.md) が [Object#extend](../../../method/Object/i/extend.md) されます。
これを connect_nonblock をリトライするために使うことができます。

```ruby
# Pull down Google's web page
require 'socket'
include Socket::Constants
socket = Socket.new(AF_INET, SOCK_STREAM, 0)
sockaddr = Socket.sockaddr_in(80, 'www.google.com')
begin # emulate blocking connect
  socket.connect_nonblock(sockaddr)
rescue IO::WaitWritable
  IO.select(nil, [socket]) # wait 3-way handshake completion
  begin
    socket.connect_nonblock(sockaddr) # check connection failure
  rescue Errno::EISCONN
  end
end
socket.write("GET / HTTP/1.0\r\n\r\n")
results = socket.read
```

- **param** `server_sockaddr` -- 接続先アドレス
- **raise** `Errno::EXXX` -- [man:connect(2)] がエラーを報告した場合に発生します。詳しくは
       man を参照してください。
