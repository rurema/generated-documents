# UNIXServer#accept_nonblock

### def accept_nonblock -> UnixSocket

ソケットをノンブロッキングモードに設定した後、
[man:accept(2)] を呼び出します。

接続した
[UNIXSocket](../../../class/UNIXSocket.md) のインスタンスを返します。

[man:accept(2)] がエラーになった場合、[Socket#accept](../../../method/Socket/i/accept.md) と同じ例外が発生します。

[Errno::EWOULDBLOCK](../../../class/Errno=3a=3aEWOULDBLOCK.md), [Errno::EAGAIN](../../../class/Errno=3a=3aEAGAIN.md), 
[Errno::ECONNABORTED](../../../class/Errno=3a=3aECONNABORTED.md), [Errno::EPROTO](../../../class/Errno=3a=3aEPROTO.md) のいずれかの例外が発生した場合は、その例外には [IO::WaitReadable](../../../class/IO=3a=3aWaitReadable.md) が extend
されます。それを利用してリトライ可能な例外を掴まえることができます。

```ruby
require 'socket'
serv = UNIXServer.new("/tmp/sock")
begin # emulate blocking accept
  sock = serv.accept_nonblock
rescue IO::WaitReadable, Errno::EINTR
  IO.select([serv])
  retry
end
# sock is an accepted socket.
```

- **SEE** [UNIXServer#accept](../../../method/UNIXServer/i/accept.md)
