# Zlib::GzipWriter#puts

### def puts(*str) -> nil

各引数を自身に出力し、それぞれの後に改行を出力します。

- **param** `str` -- 出力したいオブジェクトを指定します。

```ruby
require 'zlib'

filename='hoge1.gz'
fw = File.open(filename, "w")
Zlib::GzipWriter.wrap(fw, Zlib::BEST_COMPRESSION){|gz|
  gz.puts "fuga"
}
fr = File.open(filename)
Zlib::GzipReader.wrap(fr){|gz|
  puts gz.read
}
# => fuga
```

- **SEE** [IO#puts](../../../method/IO/i/puts.md), [Kernel?.puts](../../../method/Kernel/m/puts.md)
