# Encoding::Converter#destination_encoding

### def destination_encoding -> Encoding

変換先のエンコーディングを返します。

- **return** -- 変換先のエンコーディング

```ruby
ec = Encoding::Converter.new("utf-8", "euc-jp")
p ec.destination_encoding # => #<Encoding:EUC-JP>
```
