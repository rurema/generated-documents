# WEBrick::HTTPUtils?.escape_form

### module_function def escape_form(str) -> String

与えられた文字列を application/x-www-form-urlencoded 形式の文字列に変換します。
スペースは `+` に変換されます。

- **param** `str` -- 文字列を指定します。

```ruby
require 'webrick'
p WEBrick::HTTPUtils.escape_form('foo bar+baz')  # => "foo+bar%2Bbaz"
```

- **SEE** [WEBrick::HTTPUtils?.unescape_form](../../../method/WEBrick=3a=3aHTTPUtils/m/unescape_form.md)
