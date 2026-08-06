# class REXML::ParseException < RuntimeError

XML のパースに失敗したときに生じる例外です。

```ruby
require 'rexml/document'
begin
  REXML::Document.new("<a>foo\n</b></a> ")
rescue REXML::ParseException => ex
  p ex.position # => 16
  p ex.line # => 2
  p ex.context # => [16, 2, 2]
end
```

## Instance Methods

- [context](../method/REXML=3a=3aParseException/i/context.md)
- [line](../method/REXML=3a=3aParseException/i/line.md)
- [position](../method/REXML=3a=3aParseException/i/position.md)
- [to_s](../method/REXML=3a=3aParseException/i/to_s.md)
