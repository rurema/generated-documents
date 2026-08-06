# Zlib::GzipWriter#mtime=

### def mtime=(time)

gzip ファイルのヘッダーに記録する最終更新時間を指定します。

[Zlib::GzipWriter#write](../../../method/Zlib=3a=3aGzipWriter/i/write.md) 等の書き込み系メソッドを呼んだ後で指定しようとすると [Zlib::GzipFile::Error](../../../class/Zlib=3a=3aGzipFile=3a=3aError.md) 例外が発生します。

- **param** `time` -- gzip ファイルのヘッダーに記録する最終更新時間を整数で指定します。
- **return** -- time を返します。

```ruby
require 'zlib'

filename='hoge1.gz'
fw = File.open(filename, "w")
Zlib::GzipWriter.wrap(fw, Zlib::BEST_COMPRESSION){|gz|
  p gz.mtime = 1 #=> 1
}
fr = File.open(filename)
Zlib::GzipReader.wrap(fr){|gz|
  puts gz.mtime
  # 例
  #=> Thu Jan 01 09:00:01 +0900 1970
}
```
