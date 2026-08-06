# ARGF.class#read_nonblock

### def read_nonblock(maxlen, outbuf = nil, exception: true) -> String | Symbol | nil
{: since="1.9.3"}

処理中のファイルからノンブロッキングモードで最大 maxlen バイト読み込みます。
詳しくは [IO#read_nonblock](../../../method/IO/i/read_nonblock.md) を参照してください。

[ARGF.class#read](../../../method/ARGF=2eclass/i/read.md) などとは違って複数ファイルを同時に読み込むことはありません。

- **param** `maxlen` -- 読み込む長さの上限を整数で指定します。
- **param** `outbuf` -- 読み込んだデータを格納する [String](../../../class/String.md) オブジェクトを指定します。
- **param** `exception` -- 読み込み時に [Errno::EAGAIN](../../../class/Errno=3a=3aEAGAIN.md)、
                 [Errno::EWOULDBLOCK](../../../class/Errno=3a=3aEWOULDBLOCK.md) が発生する代わりに
                 :wait_readable を返すかどうかを指定します。また、false
                 を指定した場合は既に EOF に達していれば
                 [EOFError](../../../class/EOFError.md) の代わりに nil を返します。

- **SEE** [ARGF.class#readpartial](../../../method/ARGF=2eclass/i/readpartial.md)
