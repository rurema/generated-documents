# Psych.parse_stream

### def Psych.parse_stream(yaml) -> Psych::Nodes::Stream
### def Psych.parse_stream(yaml){|node| ... } -> ()

YAML ドキュメントをパースします。
yaml が 複数の YAML ドキュメントを含む場合を取り扱うことができます。

ブロックなしの場合は YAML の AST (すべての YAML ドキュメントを保持した [Psych::Nodes::Stream](../../../class/Psych=3a=3aNodes=3a=3aStream.md) オブジェクト)を返します。

ブロック付きの場合は、そのブロックに最初の YAML ドキュメントの Psych::Nodes::Document オブジェクトが渡されます。
この場合の返り値には意味がありません。

- **SEE** [Psych::Nodes](../../../class/Psych=3a=3aNodes.md)

```ruby title="例"
p Psych.parse_stream("---\n - a\n - b") # => #<Psych::Nodes::Stream:0x00>
```
