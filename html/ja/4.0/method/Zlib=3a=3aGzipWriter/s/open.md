# Zlib::GzipWriter.open

### def Zlib::GzipWriter.open(filename, level = Zlib::DEFAULT_COMPRESSION, strategy = Zlib::DEFAULT_STRATEGY) -> Zlib::GzipWriter
### def Zlib::GzipWriter.open(filename, level = Zlib::DEFAULT_COMPRESSION, strategy = Zlib::DEFAULT_STRATEGY) {|gz| ... } -> object

filename で指定されるファイルを gzip 圧縮データの書き出し用にオープンします。GzipWriter オブジェクトを返します。
その他詳細は [Zlib::GzipWriter.new](../../../method/Zlib=3a=3aGzipWriter/s/new.md) や [Zlib::GzipWriter.wrap](../../../method/Zlib=3a=3aGzipWriter/s/wrap.md) と同じです。

- **param** `filename` -- ファイル名を文字列で指定します。
- **param** `level` -- 0-9の範囲の整数、または [Zlib::NO_COMPRESSION](../../../method/Zlib/c/NO_COMPRESSION.md), [Zlib::BEST_SPEED](../../../method/Zlib/c/BEST_SPEED.md), 
             [Zlib::BEST_COMPRESSION](../../../method/Zlib/c/BEST_COMPRESSION.md), [Zlib::DEFAULT_COMPRESSION](../../../method/Zlib/c/DEFAULT_COMPRESSION.md) を指定します。
             詳細はzlib.hを参照してください。 
- **param** `strategy` -- [Zlib::FILTERED](../../../method/Zlib/c/FILTERED.md), [Zlib::HUFFMAN_ONLY](../../../method/Zlib/c/HUFFMAN_ONLY.md), [Zlib::DEFAULT_STRATEGY](../../../method/Zlib/c/DEFAULT_STRATEGY.md)など指定します。
                詳細はzlib.h を参照してください。

```ruby
require 'zlib'

filename='hoge1.gz'
gz = Zlib::GzipWriter.open(filename)
gz.puts "hogehoge" * 100
gz.close
p gz.closed? # => true
p FileTest.size(filename) # => 32
```
