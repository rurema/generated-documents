# Socket#recvfrom_nonblock

### def recvfrom_nonblock(maxlen, flags=0) -> [String, Addrinfo]

ソケットをノンブロッキングモードに設定した後、
[man:recvfrom(2)] を呼び出します。

引数、返り値は [Socket#recvfrom](../../../method/Socket/i/recvfrom.md) と同じです。

[man:recvfrom(2)] がエラーになった場合、
EAGAIN, EINTR を含め例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。
Errno::EWOULDBLOCK、Errno::EAGAIN のような待ってからリトライすることが可能であることを意味する例外には、[IO::WaitReadable](../../../class/IO=3a=3aWaitReadable.md) が extend
されています。

- **param** `maxlen` -- ソケットから受けとるデータの最大値
- **param** `flags` -- フラグ
- **raise** `Errno::EXXX` -- [man:recvfrom(2)] がエラーを報告した場合に発生します。詳しくは
       man を参照してください
