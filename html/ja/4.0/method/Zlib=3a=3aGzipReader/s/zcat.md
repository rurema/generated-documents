# Zlib::GzipReader.zcat

### def Zlib::GzipReader.zcat(io, options = {}) -> String
### def Zlib::GzipReader.zcat(io, options = {}) {|string| ... } -> nil

io に含まれているすべての gzip ストリームを展開します。

io の末尾まで、複数の gzip ストリームが連続して格納されている場合も扱います。gzip ストリームの後ろに gzip 形式以外のデータがあってはいけません。

ブロックが与えられた場合は、展開したストリームごとにブロックを呼び出し、`nil` を返します。ブロックが与えられなかった場合は、すべてのストリームを展開した結果を連結した文字列を返します。

- **param** `io` -- 読み込み元の IO オブジェクトを指定します。
- **param** `options` -- [Zlib::GzipReader.new](../../../method/Zlib=3a=3aGzipReader/s/new.md) に渡すオプションをハッシュで指定します。

```ruby
require 'zlib'

File.open('multi.gz', 'wb') { |f|
  f.write(Zlib.gzip('hoge'))
  f.write(Zlib.gzip('fuga'))
}

File.open('multi.gz') { |f|
  p Zlib::GzipReader.zcat(f) # => "hogefuga"
}

File.open('multi.gz') { |f|
  Zlib::GzipReader.zcat(f) { |chunk| p chunk }
}
# => "hoge"
# => "fuga"
```

- **SEE** [Zlib::GzipReader.new](../../../method/Zlib=3a=3aGzipReader/s/new.md)
