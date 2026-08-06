# class Zlib::GzipWriter < Zlib::GzipFile

gzip 形式の圧縮ファイルを書き出すラッパークラスです。
IO クラスのインスタンス (又は IO クラスのインスタンスと同じメソッドを持つオブジェクト) と関連付けて使用します。

```ruby
require 'zlib'

Zlib::GzipWriter.open('hoge.gz') {|gz|
  gz.write 'jugemu jugemu gokou no surikire...'
}
  
f = File.open('hoge.gz', 'w')
gz = Zlib::GzipWriter.new(f)
gz.write 'jugemu jugemu gokou no surikire...'
gz.close
```

なお、Ruby の finalizer の制約のため、GzipWriter オブジェクトは必ず
[Zlib::GzipWriter#close](../method/Zlib=3a=3aGzipWriter/i/close.md) 等を用いてクローズしてください。
そうしなければフッターを書き出すことができず、壊れた gzip ファイルを生成してしまう可能性があります。

## Class Methods

- [new](../method/Zlib=3a=3aGzipWriter/s/new.md)
- [open](../method/Zlib=3a=3aGzipWriter/s/open.md)
- [wrap](../method/Zlib=3a=3aGzipWriter/s/wrap.md)

## Instance Methods

- [<<](../method/Zlib=3a=3aGzipWriter/i/=3c=3c.md)
- [close](../method/Zlib=3a=3aGzipWriter/i/close.md)
- [finish](../method/Zlib=3a=3aGzipWriter/i/finish.md)
- [comment=](../method/Zlib=3a=3aGzipWriter/i/comment=3d.md)
- [flush](../method/Zlib=3a=3aGzipWriter/i/flush.md)
- [mtime=](../method/Zlib=3a=3aGzipWriter/i/mtime=3d.md)
- [orig_name=](../method/Zlib=3a=3aGzipWriter/i/orig_name=3d.md)
- [pos](../method/Zlib=3a=3aGzipWriter/i/pos.md)
- [tell](../method/Zlib=3a=3aGzipWriter/i/tell.md)
- [print](../method/Zlib=3a=3aGzipWriter/i/print.md)
- [printf](../method/Zlib=3a=3aGzipWriter/i/printf.md)
- [putc](../method/Zlib=3a=3aGzipWriter/i/putc.md)
- [puts](../method/Zlib=3a=3aGzipWriter/i/puts.md)
- [write](../method/Zlib=3a=3aGzipWriter/i/write.md)
