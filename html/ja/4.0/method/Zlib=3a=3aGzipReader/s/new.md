# Zlib::GzipReader.new

### def Zlib::GzipReader.new(io) -> Zlib::GzipReader

io と関連付けられた GzipReader オブジェクトを作成します。

GzipReader オブジェクトは io からデータを逐次リードして解析/展開を行います。io には少なくとも、[IO#read](../../../method/IO/i/read.md) と同じ動作をする read メソッドが定義されている必要があります。

- **param** `io` -- IO オブジェクト、もしくは少なくとも [IO#read](../../../method/IO/i/read.md) と同じ動作を
          する read メソッドが定義されているオブジェクト

- **raise** `Zlib::GzipFile::Error` -- ヘッダーの解析に失敗した場合発生します。

```ruby
require 'zlib'

File.open('hoge.txt', "w") { |fp|
  fp.puts 'hoge'
}

f = File.open('hoge.txt')
begin
  Zlib::GzipReader.new(f)
rescue Zlib::GzipFile::Error => err
  puts "error", err #=> error
                    #=> not in gzip format
end
```
