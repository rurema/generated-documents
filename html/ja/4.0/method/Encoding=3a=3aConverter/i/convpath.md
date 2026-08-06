# Encoding::Converter#convpath

### def convpath -> Array

変換器が行う変換の経路を配列にして返します。

- **return** -- 変換器が行う変換の経路の配列

```ruby
ec = Encoding::Converter.new("ISo-8859-1", "EUC-JP", crlf_newline: true)
p ec.convpath
#=> [[#<Encoding:ISO-8859-1>, #<Encoding:UTF-8>],
#    [#<Encoding:UTF-8>, #<Encoding:EUC-JP>],
#    "crlf_newline"]
```

- **SEE** [Encoding::Converter.search_convpath](../../../method/Encoding=3a=3aConverter/s/search_convpath.md)
