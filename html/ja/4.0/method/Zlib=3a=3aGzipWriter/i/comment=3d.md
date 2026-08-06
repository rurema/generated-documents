# Zlib::GzipWriter#comment=

### def comment=(string)

gzip ファイルのヘッダーに記録するコメントを指定します。

[Zlib::GzipWriter#write](../../../method/Zlib=3a=3aGzipWriter/i/write.md) 等の書き込み系メソッドを呼んだ後で指定しようとすると [Zlib::GzipFile::Error](../../../class/Zlib=3a=3aGzipFile=3a=3aError.md) 例外が発生します。

- **param** `string` -- gzip ファイルのヘッダーに記録するコメントを文字列で指定します。
- **return** -- string を返します。

```ruby
require 'zlib'

filename='hoge1.gz'
fw = File.open(filename, "w")
Zlib::GzipWriter.wrap(fw, Zlib::BEST_COMPRESSION){|gz|
  gz.comment = "hogehoge"
  p gz.comment #=> "hogehoge"
}
fr = File.open(filename)
Zlib::GzipReader.wrap(fr){|gz|
  puts gz.comment #=> hogehoge
}
```
