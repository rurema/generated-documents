# IO#read_nonblock

### def read_nonblock(maxlen, outbuf = nil, exception: true) -> String | Symbol | nil

IO をノンブロッキングモードに設定し、その後で [man:read(2)] システムコールにより長さ maxlen を上限として読み込み、文字列として返します。
EAGAIN, EINTR などは [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) 例外として呼出元に報告されます。

発生した例外 がErrno::EAGAIN、 Errno::EWOULDBLOCK である場合は、その例外オブジェクトに [IO::WaitReadable](../../../class/IO=3a=3aWaitReadable.md) が [Object#extend](../../../method/Object/i/extend.md)
されます。

なお、バッファが空でない場合は、read_nonblock はバッファから読み込みます。この場合、read(2) システムコールは呼ばれません。

このメソッドはノンブロッキングモードにする点を除いて [IO#readpartial](../../../method/IO/i/readpartial.md) と同じであることに注意してください。

バイナリ読み込みメソッドとして動作します。

既に EOF に達していれば EOFError が発生します。ただし、maxlen に 0 が指定されている場合は、空文字列 "" を返します。

- **param** `maxlen` -- 読み込む長さの上限を整数で指定します。

- **param** `outbuf` -- 文字列で指定します。IO#read_nonblock は読み込んだデータを outbuf に破壊的に格納し、
              返り値は outbuf となります。outbuf は一旦 maxlen 長に拡張(あるいは縮小)されたあと、
              実際に読み込んだデータのサイズになります。read(2) システムコールが 0 を返した場合は、空文字列になります。

- **param** `exception` -- 読み込み時に [Errno::EAGAIN](../../../class/Errno=3a=3aEAGAIN.md)、
                 [Errno::EWOULDBLOCK](../../../class/Errno=3a=3aEWOULDBLOCK.md) が発生する代わりに
                 :wait_readable を返すかどうかを指定します。また、false
                 を指定した場合は既に EOF に達していれば
                 [EOFError](../../../class/EOFError.md) の代わりに nil を返します。

- **raise** `IOError` -- 自身が読み込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- read(2) システムコールの結果としてエラーが起きた場合に発生します。

- **raise** `EOFError` -- read(2) システムコールが 0 を返した場合に発生します。これは、IO が既に EOF に達していることを意味します。
