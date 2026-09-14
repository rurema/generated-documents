# class Zlib::GzipReader < Zlib::GzipFile

gzip 形式の圧縮ファイルを読み込むラッパークラスです。
IO クラスのインスタンス (又は IO クラスのインスタンスと同じメソッドを持つオブジェクト) と関連付けて使用します。

```ruby
require 'zlib'
=begin
# hoge.gz がない場合は下記で作成できる。
Zlib::GzipWriter.open('hoge.gz') { |gz|
  gz.puts 'hoge'
}
=end

Zlib::GzipReader.open('hoge.gz') {|gz|
  print gz.read
}
  
f = File.open('hoge.gz')
gz = Zlib::GzipReader.new(f)
print gz.read
gz.close
```

## Class Methods

- [new](../method/Zlib=3a=3aGzipReader/s/new.md)
- [open](../method/Zlib=3a=3aGzipReader/s/open.md)
- [wrap](../method/Zlib=3a=3aGzipReader/s/wrap.md)
- [zcat](../method/Zlib=3a=3aGzipReader/s/zcat.md)

## Instance Methods

- [each](../method/Zlib=3a=3aGzipReader/i/each.md)
- [each_line](../method/Zlib=3a=3aGzipReader/i/each_line.md)
- [each_byte](../method/Zlib=3a=3aGzipReader/i/each_byte.md)
- [each_char](../method/Zlib=3a=3aGzipReader/i/each_char.md)
- [eof](../method/Zlib=3a=3aGzipReader/i/eof.md)
- [eof?](../method/Zlib=3a=3aGzipReader/i/eof=3f.md)
- [external_encoding](../method/Zlib=3a=3aGzipReader/i/external_encoding.md)
- [getbyte](../method/Zlib=3a=3aGzipReader/i/getbyte.md)
- [getc](../method/Zlib=3a=3aGzipReader/i/getc.md)
- [gets](../method/Zlib=3a=3aGzipReader/i/gets.md)
- [lineno](../method/Zlib=3a=3aGzipReader/i/lineno.md)
- [lineno=](../method/Zlib=3a=3aGzipReader/i/lineno=3d.md)
- [pos](../method/Zlib=3a=3aGzipReader/i/pos.md)
- [tell](../method/Zlib=3a=3aGzipReader/i/tell.md)
- [read](../method/Zlib=3a=3aGzipReader/i/read.md)
- [readbyte](../method/Zlib=3a=3aGzipReader/i/readbyte.md)
- [readchar](../method/Zlib=3a=3aGzipReader/i/readchar.md)
- [readline](../method/Zlib=3a=3aGzipReader/i/readline.md)
- [readlines](../method/Zlib=3a=3aGzipReader/i/readlines.md)
- [readpartial](../method/Zlib=3a=3aGzipReader/i/readpartial.md)
- [rewind](../method/Zlib=3a=3aGzipReader/i/rewind.md)
- [ungetbyte](../method/Zlib=3a=3aGzipReader/i/ungetbyte.md)
- [ungetc](../method/Zlib=3a=3aGzipReader/i/ungetc.md)
- [unused](../method/Zlib=3a=3aGzipReader/i/unused.md)
