# Zlib::GzipWriter#flush

### def flush(flush = Zlib::SYNC_FLUSH) -> self

まだ書き出されていないデータをフラッシュします。

flush は [Zlib::Deflate#deflate](../../../method/Zlib=3a=3aDeflate/i/deflate.md) と同じです。
省略時は [Zlib::SYNC_FLUSH](../../../method/Zlib/c/SYNC_FLUSH.md) が使用されます。
flush に [Zlib::NO_FLUSH](../../../method/Zlib/c/NO_FLUSH.md) を指定することは無意味です。

- **param** `flush` -- [Zlib::NO_FLUSH](../../../method/Zlib/c/NO_FLUSH.md) [Zlib::SYNC_FLUSH](../../../method/Zlib/c/SYNC_FLUSH.md) [Zlib::FULL_FLUSH](../../../method/Zlib/c/FULL_FLUSH.md) などを指定します。

```ruby
require 'zlib'
 
def case1
  filename='hoge1.gz'
  fw = File.open(filename, "w")
  Zlib::GzipWriter.wrap(fw, Zlib::BEST_COMPRESSION){|gz|
    gz.puts "fuga"
    gz.puts "ugo"
  }
  p File.read(filename)
end
   
def case2
  filename='hoge1.gz'
  fw = File.open(filename, "w")
  Zlib::GzipWriter.wrap(fw, Zlib::BEST_COMPRESSION){|gz|
    gz.puts "fuga"
    gz.flush
    gz.puts "ugo\n"
    gz.flush
  }
  p File.read(filename)
end
 
case1
#=> "\037\213\b\000p\257pH\002\003K+MO\344*M\317\347\002\000<\326\000\371\t\000\000\000"
case2
#=> "\037\213\b\000p\257pH\002\003J+MO\344\002\000\000\000\377\377*M\317\347\002\000\000\000\377\377\003\000<\326\000\371\t\000\000\000"
```
