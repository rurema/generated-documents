# WEBrick::HTTPUtils?.unescape_form

### module_function def unescape_form(str) -> String

[WEBrick::HTTPUtils?.escape_form](../../../method/WEBrick=3a=3aHTTPUtils/m/escape_form.md) で変換された文字列を元の文字列に戻します。
`+` はスペースに変換されます。

- **param** `str` -- 文字列を指定します。

```ruby
require 'webrick'
p WEBrick::HTTPUtils.unescape_form('foo+bar%2Bbaz')  # => "foo bar+baz"
```

- **SEE** [WEBrick::HTTPUtils?.escape_form](../../../method/WEBrick=3a=3aHTTPUtils/m/escape_form.md)
