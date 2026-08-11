# Zlib::GzipWriter#finish

### def close -> File
### def finish -> File

フッターを書き出し、GzipWriter オブジェクトをクローズします。close と
finish の違いは [Zlib::GzipFile#close](../../../method/Zlib=3a=3aGzipFile/i/close.md), [Zlib::GzipFile#finish](../../../method/Zlib=3a=3aGzipFile/i/finish.md) を参照して下さい。

注意: Ruby の finalizer の制約のため、GzipWriter オブジェクトは必ずクローズしてください。そうしなければフッターを書き出すことができず、壊れた gzip ファイルを生成してしまう可能性があります。

```ruby
require 'zlib'
   
def case_finish
  filename='hoge1.gz'
  gz = Zlib::GzipWriter.open(filename, 9)
  gz.puts "hogehoge\n" * 100
  f = gz.finish
  p f.atime
  # 例
  # => Sun Jul 06 15:43:57 +0900 2008
end
 
def case_close
  filename='hoge1.gz'
  gz = Zlib::GzipWriter.open(filename, 9)
  gz.puts "hogehoge\n" * 100
  f = gz.close
  begin
    p f.atime
  rescue IOError => err
    puts err # => closed stream
  end
end
 
case_finish
case_close
```
