# Prism::Source#byte_offset

### def byte_offset(line, column) -> Integer

行番号と桁位置からバイトオフセットを求めます。

- **param** `line` -- 行番号(1 origin)
- **param** `column` -- 行頭からのバイト単位の桁位置(0 origin)

```ruby title="例"
require "prism"

source = Prism.parse("foo = 1\nbar = 2\n").source
p source.byte_offset(2, 1) # => 9
p source.line(9)           # => 2
```
