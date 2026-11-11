# CSV::InvalidEncodingError#encoding

### def encoding -> Encoding

パースしようとした入力のエンコーディングを返します。

```ruby title="例"
require "csv"

begin
  CSV.parse("a,b\n\x81,1\n".force_encoding("Shift_JIS"))
rescue CSV::InvalidEncodingError => e
  p e.encoding # => #<Encoding:Shift_JIS>
  p e.lineno   # => 2
end
```
