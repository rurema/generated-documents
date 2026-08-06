# CSV#encoding

### def encoding -> Encoding

読み書きするときに使用するエンコーディングを返します。

```ruby title="例"
require "csv"

csv = CSV.new("header1,header2\nrow1_1,row1_2", headers: true)
p csv.encoding # => #<Encoding:UTF-8>
```
