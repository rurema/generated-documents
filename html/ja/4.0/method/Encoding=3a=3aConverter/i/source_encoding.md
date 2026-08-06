# Encoding::Converter#source_encoding

### def source_encoding -> Encoding

変換元のエンコーディングを返します。

- **return** -- 変換元のエンコーディング

```ruby
ec = Encoding::Converter.new("utf-8", "euc-jp")
p ec.source_encoding #=> #<Encoding:UTF-8>
```
