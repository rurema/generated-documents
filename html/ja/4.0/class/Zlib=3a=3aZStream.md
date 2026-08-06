# class Zlib::ZStream < Object

圧縮データを扱うストリームを表す抽象クラスです。
具体的な圧縮/展開の操作は、それぞれサブクラスの [Zlib::Deflate](../class/Zlib=3a=3aDeflate.md),
[Zlib::Inflate](../class/Zlib=3a=3aInflate.md) で定義されています。

Zlib::ZStream オブジェクトは、ストリーム (struct zstream) の入力側 (next_in) と出力側 (next_out) にそれぞれ可変長のバッファを持ちます。以下、入力側のバッファを「入力バッファ」、出力側のバッファを「出力バッファ」と呼びます。

Zlib::ZStream オブジェクトに入力されたデータは、一旦入力バッファの末尾にストアされた後、ストリームからの出力がなくなるまで
(処理後 avail_out > 0 となるまで) 入力バッファの先頭から順に処理されます。
処理の間、出力バッファは全出力を保持するために必要に応じて自動的に確保・拡張されます。

いくつかのメソッドは、出力バッファ内のデータを取り出し、
String オブジェクトとして返します。

以上を図示すると次のようになります:

```text
+================ an instance of Zlib::ZStream ================+
||                                                            ||
||     +--------+          +-------+          +--------+      ||
||  +--| output |<---------|zstream|<---------| input  |<--+  ||
||  |  | buffer |  next_out+-------+next_in   | buffer |   |  ||
||  |  +--------+                             +--------+   |  ||
||  |                                                      |  ||
+===|======================================================|===+
    |                                                      |
    v                                                      |
"output data"                                         "input data"
```

入力バッファの内容を処理している最中にエラーが発生した場合、
[Zlib::Error](../class/Zlib=3a=3aError.md) のサブクラスの例外が発生します。その時、入力/出力バッファは共に、エラーが発生した時点の状態をそのまま保持します。

## Class Methods

- [new](../method/Zlib=3a=3aZStream/s/new.md)

## Instance Methods

- [adler](../method/Zlib=3a=3aZStream/i/adler.md)
- [avail_in](../method/Zlib=3a=3aZStream/i/avail_in.md)
- [avail_out](../method/Zlib=3a=3aZStream/i/avail_out.md)
- [avail_out=](../method/Zlib=3a=3aZStream/i/avail_out=3d.md)
- [close](../method/Zlib=3a=3aZStream/i/close.md)
- [end](../method/Zlib=3a=3aZStream/i/end.md)
- [closed?](../method/Zlib=3a=3aZStream/i/closed=3f.md)
- [ended?](../method/Zlib=3a=3aZStream/i/ended=3f.md)
- [data_type](../method/Zlib=3a=3aZStream/i/data_type.md)
- [finish](../method/Zlib=3a=3aZStream/i/finish.md)
- [finished?](../method/Zlib=3a=3aZStream/i/finished=3f.md)
- [stream_end?](../method/Zlib=3a=3aZStream/i/stream_end=3f.md)
- [flush_next_in](../method/Zlib=3a=3aZStream/i/flush_next_in.md)
- [flush_next_out](../method/Zlib=3a=3aZStream/i/flush_next_out.md)
- [reset](../method/Zlib=3a=3aZStream/i/reset.md)
- [total_in](../method/Zlib=3a=3aZStream/i/total_in.md)
- [total_out](../method/Zlib=3a=3aZStream/i/total_out.md)
