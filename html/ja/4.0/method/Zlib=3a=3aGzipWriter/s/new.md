# Zlib::GzipWriter.new

### def Zlib::GzipWriter.new(io, level = Zlib::DEFAULT_COMPRESSION, strategy = Zlib::DEFAULT_STRATEGY) -> Zlib::GzipWriter

io と関連付けられた GzipWriter オブジェクトを作成します。
level, strategy は [Zlib::Deflate.new](../../../method/Zlib=3a=3aDeflate/s/new.md) と同じです。
GzipWriter オブジェクトは io に gzip 形式のデータを逐次ライトします。io には少なくとも、[IO#write](../../../method/IO/i/write.md) と同じ動作をする write メソッドが定義されている必要があります。

- **param** `io` --  IOオブジェクト、もしくは少なくとも、
           [IO#write](../../../method/IO/i/write.md) と 同じ動作をする write メソッドが定義されている必要があります。
- **param** `level` --  0-9の範囲の整数を指定します。詳細はzlib.hを参照してください。 
- **param** `strategy` -- [Zlib::FILTERED](../../../method/Zlib/c/FILTERED.md), [Zlib::HUFFMAN_ONLY](../../../method/Zlib/c/HUFFMAN_ONLY.md), [Zlib::DEFAULT_STRATEGY](../../../method/Zlib/c/DEFAULT_STRATEGY.md)など指定します。詳細はzlib.h を>参照してください。

```ruby
require 'zlib'

filename='hoge1.gz'
f = File.open(filename, "w")
gz = Zlib::GzipWriter.new(f)
gz.puts "hogehoge" * 100
gz.close  
p gz.closed? #=> true
p FileTest.size(filename) #=> 32
```
