# Zlib::GzipWriter.wrap

### def Zlib::GzipWriter.wrap(io, level = Zlib::DEFAULT_COMPRESSION, strategy = Zlib::DEFAULT_STRATEGY) -> Zlib::GzipWriter
### def Zlib::GzipWriter.wrap(io, level = Zlib::DEFAULT_COMPRESSION, strategy = Zlib::DEFAULT_STRATEGY) {|gz| ... } -> object

io と関連付けられた GzipWriter オブジェクトを作成します。
ブロックが与えられた場合、それを引数としてブロックを実行します。
ブロックの実行が終了すると、GzipWriter オブジェクトは自動的にクローズされます。関連付けられている IO オブジェクトまでクローズしたくない時は、ブロック中で [Zlib::GzipFile#finish](../../../method/Zlib=3a=3aGzipFile/i/finish.md)
メソッドを呼び出して下さい。

- **param** `io` --  IOオブジェクト、もしくは少なくとも、
           [IO#write](../../../method/IO/i/write.md) と 同じ動作をする write メソッドが定義されている必要があります。
- **param** `level` --  0-9の範囲の整数を指定します。詳細はzlib.hを参照してください。 
- **param** `strategy` -- [Zlib::FILTERED](../../../method/Zlib/c/FILTERED.md), [Zlib::HUFFMAN_ONLY](../../../method/Zlib/c/HUFFMAN_ONLY.md), [Zlib::DEFAULT_STRATEGY](../../../method/Zlib/c/DEFAULT_STRATEGY.md)など指定します。
                詳細はzlib.h を参照してください。

```ruby
require 'zlib'
  
def case1
  filename='hoge1.txt'
  f = File.open(filename, "w")
  Zlib::GzipWriter.wrap(f, Zlib::NO_COMPRESSION){|gz|
    gz.puts "hogehoge" * 100
  }
  p f.closed? #=> true
  p FileTest.size(filename) #=> 824
end
  
def case2
  filename='hoge1.gz'
  f = File.open(filename, "w")
  Zlib::GzipWriter.wrap(f, Zlib::BEST_COMPRESSION){|gz|
    gz.puts "hogehoge" * 100
    gz.finish
  }
  p f.closed? #=> false
  f.close
  p FileTest.size(filename) #=> 32
end
  
case1
case2
```
