# Prism::Node#to_dot

### def to_dot -> String

構文木を Graphviz の DOT 言語形式の文字列に変換します。

```ruby title="例"
require "prism"

dot = Prism.parse("1 + 2").value.to_dot
p dot.start_with?("digraph") # => true
```
