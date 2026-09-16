# ERB#encoding

### def encoding -> Encoding
{: since="2.2.0"}

コンパイルされた eRuby スクリプトを `eval` するときに使われるエンコーディングを返します。

```ruby title="例"
require 'erb'
erb = ERB.new('<%= 1 + 1 %>')
p erb.encoding # => #<Encoding:UTF-8>
```
