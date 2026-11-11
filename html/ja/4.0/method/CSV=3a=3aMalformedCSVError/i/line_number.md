# CSV::MalformedCSVError#line_number

### def line_number -> Integer
{: since="2.6.0"}
### def lineno -> Integer
{: since="2.6.0"}

例外が発生した行の行番号を返します。

```ruby title="例"
require "csv"

begin
  CSV.parse("a,b\n\"c,d\n")
rescue CSV::MalformedCSVError => e
  p e.line_number # => 2
  p e.lineno      # => 2
  p e.message     # => "Unclosed quoted field in line 2."
end
```
