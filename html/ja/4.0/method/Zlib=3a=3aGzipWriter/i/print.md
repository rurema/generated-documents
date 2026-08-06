# Zlib::GzipWriter#print

### def print(*str) -> nil

引数を自身に順に出力します。引数を省略した場合は、[m:$_] を出力します。

- **param** `str` -- 出力するオブジェクトを指定します。

```ruby
require 'zlib'

filename='hoge1.gz'
fw = File.open(filename, "w")
Zlib::GzipWriter.wrap(fw, Zlib::BEST_COMPRESSION){|gz|
  gz.print "ugo"
}
fr = File.open(filename)
Zlib::GzipReader.wrap(fr){|gz|
  puts gz.read
}
#=> ugo
```

- **SEE** [IO#print](../../../method/IO/i/print.md), [Kernel?.print](../../../method/Kernel/m/print.md)
