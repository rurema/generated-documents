# Zlib::GzipWriter#orig_name=

### def orig_name=(filename)

gzip ファイルのヘッダーに記録する元ファイル名を指定します。

[Zlib::GzipWriter#write](../../../method/Zlib=3a=3aGzipWriter/i/write.md) 等の書き込み系メソッドを呼んだ後で指定しようとすると [Zlib::GzipFile::Error](../../../class/Zlib=3a=3aGzipFile=3a=3aError.md) 例外が発生します。

- **param** `filename` -- gzip ファイルのヘッダーに記録する元ファイル名を文字列で指定します。
- **return** -- filename を返します。

```ruby
require 'zlib'

filename='hoge1.gz'
fw = File.open(filename, "w")
Zlib::GzipWriter.wrap(fw, Zlib::BEST_COMPRESSION){|gz|
  gz.orig_name = "hogehoge"
  p gz.orig_name #=> "hogehoge"
}
fr = File.open(filename)
Zlib::GzipReader.wrap(fr){|gz|
  puts gz.orig_name #=> hogehoge
}
```
