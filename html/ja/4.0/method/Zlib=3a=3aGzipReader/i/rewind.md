# Zlib::GzipReader#rewind

### def rewind -> 0

ファイルポインタを [Zlib::GzipReader.new](../../../method/Zlib=3a=3aGzipReader/s/new.md) を呼び出した直後の時点に戻します。関連付けられている IO オブジェクトに
seek メソッドが定義されている必要があります。

```ruby
require 'zlib'

=begin
# hoge.gz がない場合はこれで作成する。
Zlib::GzipWriter.open('hoge.gz') { |gz|
  gz.puts 'hoge'
  gz.puts 'fuga'
}
=end

gz = Zlib::GzipReader.open('hoge.gz')
puts gz.gets #=> hoge
puts gz.gets #=> fuga
p gz.rewind  #=> 0
puts gz.gets #=> hoge
gz.close
```
