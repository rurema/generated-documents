# IO#write_nonblock

### def write_nonblock(string, exception: true) -> Integer | :wait_writable

IO をノンブロッキングモードに設定し、string を [man:write(2)] システムコールで書き出します。

write(2) が成功した場合、書き込んだ長さを返します。
EAGAIN, EINTR などは例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) として呼出元に報告されます。

書き込んだバイト数(つまり返り値)は [String#bytesize](../../../method/String/i/bytesize.md) の値より小さい可能性があります。

発生した例外 がErrno::EAGAIN、 Errno::EWOULDBLOCK である場合は、その例外オブジェクトに [IO::WaitWritable](../../../class/IO=3a=3aWaitWritable.md) が [Object#extend](../../../method/Object/i/extend.md)
されます。よって IO::WaitWritable を write_nonblock のリトライが必要かの判定に用いることができます。

- **param** `string` -- 自身に書き込みたい文字列を指定します。

- **param** `exception` -- false を指定すると、書き込み時に [Errno::EAGAIN](../../../class/Errno=3a=3aEAGAIN.md)、[Errno::EWOULDBLOCK](../../../class/Errno=3a=3aEWOULDBLOCK.md) が発生する代わりに :wait_writable を返します。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- [man:write(2)] が失敗した場合に発生します。
