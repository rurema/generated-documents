# Prism::ParseResult#mark_newlines!

### def mark_newlines! -> ()

構文木を巡回し、CRuby の `:line` [TracePoint](../../../class/TracePoint.md) イベントが発生する行に対応するノードに印を付けます。

印が付いたノードは [Prism::Node#newline?](../../../method/Prism=3a=3aNode/i/newline=3f.md) で判定できます。[Prism?.parse](../../../method/Prism/m/parse.md) などの通常の解析結果ではこの処理は解析時にすでに行われていますが、構文木を独自に構築した場合など、印が付いていない構文木に対して明示的に呼び出すために使います。

```ruby title="例"
require "prism"

result = Prism.parse("if true\n  1\nend\n")
result.mark_newlines!
p result.value.statements.body[0].newline?
# => true
```

- **SEE** [Prism::Node#newline?](../../../method/Prism=3a=3aNode/i/newline=3f.md)
