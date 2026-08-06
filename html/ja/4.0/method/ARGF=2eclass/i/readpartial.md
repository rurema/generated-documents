# ARGF.class#readpartial

### def readpartial(maxlen, outbuf = nil) -> String

[IO#readpartial](../../../method/IO/i/readpartial.md)を参照。[ARGF.class#read](../../../method/ARGF=2eclass/i/read.md) などとは違って複数ファイルを同時に読み込むことはありません。

- **param** `maxlen` -- 読み込む長さの上限を整数で指定します。
- **param** `outbuf` -- 読み込んだデータを格納する [String](../../../class/String.md) オブジェクトを指定します。

- **SEE** [IO#readpartial](../../../method/IO/i/readpartial.md), [ARGF.class#read_nonblock](../../../method/ARGF=2eclass/i/read_nonblock.md)
