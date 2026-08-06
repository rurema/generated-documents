# Zlib::GzipReader.open

### def Zlib::GzipReader.open(filename) -> Zlib::GzipReader
### def Zlib::GzipReader.open(filename) {|gz| ... } -> object

filename で指定されるファイルを gzip ファイルとしてオープンします。GzipReader オブジェクトを返します。
その他詳細は [Zlib::GzipReader.new](../../../method/Zlib=3a=3aGzipReader/s/new.md) や [Zlib::GzipReader.wrap](../../../method/Zlib=3a=3aGzipReader/s/wrap.md) と同じです。

- **param** `filename` -- gzip ファイル名を文字列で指定します。

```ruby
require 'zlib'

=begin
# hoge.gz がない場合はこれで作成する。
Zlib::GzipWriter.open('hoge.gz') { |gz|
  gz.puts 'hoge'
}
=end

Zlib::GzipReader.open('hoge.gz'){|gz|
  print gz.read
}
```
