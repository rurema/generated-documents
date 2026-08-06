# Zlib::GzipWriter#printf

### def printf(format, *args) -> nil

C 言語の printf と同じように、format に従い引数を文字列に変換して、自身に出力します。

- **param** `format` -- フォーマット文字列を指定します。[print_format](../../../doc/print_format.md) を参照してください。

- **param** `args` -- フォーマットされるオブジェクトを指定します。

```ruby
require 'zlib'

filename='hoge1.gz'
fw = File.open(filename, "w")
Zlib::GzipWriter.wrap(fw, Zlib::BEST_COMPRESSION){|gz|
  gz.printf("\n%9s", "bar")
}
fr = File.open(filename)
Zlib::GzipReader.wrap(fr){|gz|
  puts gz.read
}
#=>       bar
```

- **SEE** [IO#printf](../../../method/IO/i/printf.md), [Kernel?.printf](../../../method/Kernel/m/printf.md)
