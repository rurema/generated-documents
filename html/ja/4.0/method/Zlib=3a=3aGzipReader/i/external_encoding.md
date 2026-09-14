# Zlib::GzipReader#external_encoding

### def external_encoding -> Encoding

`self` が読み込むデータの外部エンコーディングを返します。

[Zlib::GzipReader.new](../../../method/Zlib=3a=3aGzipReader/s/new.md) や [Zlib::GzipReader.open](../../../method/Zlib=3a=3aGzipReader/s/open.md) の `:external_encoding` オプションや `:encoding` オプションで指定した値を返します。省略した場合はデフォルトの外部エンコーディング([Encoding.default_external](../../../method/Encoding/s/default_external.md))を返します。

```ruby
require 'zlib'

Zlib::GzipWriter.open('hoge.gz') { |gz| gz.print 'hoge' }

Zlib::GzipReader.open('hoge.gz', external_encoding: 'EUC-JP') { |gz|
  p gz.external_encoding # => #<Encoding:EUC-JP>
}
```

- **SEE** [IO#external_encoding](../../../method/IO/i/external_encoding.md)
