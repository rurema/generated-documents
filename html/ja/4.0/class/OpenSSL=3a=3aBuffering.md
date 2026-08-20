# module OpenSSL::Buffering

[OpenSSL::SSL::SSLSocket](../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md) にバッファリング付きIO機能を提供するモジュールです。

[IO](../class/IO.md) クラスと同様のメソッドを提供しています。

内部的には sysread, syswrite, sysread_nonblock, syswrite_nonblock,
sysclose といった [OpenSSL::SSL::SSLSocket](../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md) が提供するメソッドを利用し、 [OpenSSL::SSL::SSLSocket](../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md) がラップしているソケットをバッファ経由でデータを暗号化してやりとりを行います。

### IO との違い

このクラスは IO クラスと同様のメソッドを提供していますが、以下の点で異なります。これらは今後のバージョンで変更(改善)
される可能性があります。
  - gets や readlines など行読み込みメソッドの引数(行区切り文字列の指定)
    の意味が異なります。例えば "" で連続改行を区切りとみなすモードはなく
    nil を渡すとエラーとなります
  - read_nonblock が書き込み不可能で例外を発生させたり、
    write_nonblock が読み込み不可能で例外を発生させたりします。
    これは暗号化通信でのデータの送信には双方向のメッセージの
    やりとりが必要な場合があるためです。
  - Ruby 1.9 では encoding 関連を設定しません
  - Ruby 1.9 で each_byte が String をブロックに渡します

## Instance Methods

- [<<](../method/OpenSSL=3a=3aBuffering/i/=3c=3c.md)
- [close](../method/OpenSSL=3a=3aBuffering/i/close.md)
- [each](../method/OpenSSL=3a=3aBuffering/i/each.md)
- [each_line](../method/OpenSSL=3a=3aBuffering/i/each_line.md)
- [each_byte](../method/OpenSSL=3a=3aBuffering/i/each_byte.md)
- [eof](../method/OpenSSL=3a=3aBuffering/i/eof.md)
- [eof?](../method/OpenSSL=3a=3aBuffering/i/eof=3f.md)
- [flush](../method/OpenSSL=3a=3aBuffering/i/flush.md)
- [getc](../method/OpenSSL=3a=3aBuffering/i/getc.md)
- [gets](../method/OpenSSL=3a=3aBuffering/i/gets.md)
- [print](../method/OpenSSL=3a=3aBuffering/i/print.md)
- [printf](../method/OpenSSL=3a=3aBuffering/i/printf.md)
- [puts](../method/OpenSSL=3a=3aBuffering/i/puts.md)
- [read](../method/OpenSSL=3a=3aBuffering/i/read.md)
- [read_nonblock](../method/OpenSSL=3a=3aBuffering/i/read_nonblock.md)
- [readchar](../method/OpenSSL=3a=3aBuffering/i/readchar.md)
- [readline](../method/OpenSSL=3a=3aBuffering/i/readline.md)
- [readlines](../method/OpenSSL=3a=3aBuffering/i/readlines.md)
- [readpartial](../method/OpenSSL=3a=3aBuffering/i/readpartial.md)
- [sync](../method/OpenSSL=3a=3aBuffering/i/sync.md)
- [sync=](../method/OpenSSL=3a=3aBuffering/i/sync=3d.md)
- [ungetc](../method/OpenSSL=3a=3aBuffering/i/ungetc.md)
- [write](../method/OpenSSL=3a=3aBuffering/i/write.md)
- [write_nonblock](../method/OpenSSL=3a=3aBuffering/i/write_nonblock.md)

## Constants

- [BLOCK_SIZE](../method/OpenSSL=3a=3aBuffering/c/BLOCK_SIZE.md)
