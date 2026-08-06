# class Prism::Node < Object

構文解析の結果得られる構文木の各ノードを表す抽象基底クラスです。
[Prism?.parse](../method/Prism/m/parse.md) などが返す構文木は、このクラスのサブクラス
(150 種類以上)のインスタンスで構成されます。`Prism::Node` 自身のインスタンスが生成されることはありません。

個々のノードクラス(`Prism::ProgramNode`・`Prism::CallNode` など)に固有のフィールド(子ノードや値を取得するアクセサ)はこのリファレンスでは扱いません。このページで扱うのは、すべてのノードクラスに共通する
API です。個々のノードクラスの詳細は公式ドキュメントを参照してください。

- プロジェクトページ: <https://github.com/ruby/prism>
- リファレンス(YARD): <https://www.rubydoc.info/gems/prism>
- ドキュメントサイト: <https://ruby.github.io/prism/>

```ruby title="例"
require "prism"

node = Prism.parse("1 + 2").value
p node.type           # => :program_node
p node.class          # => Prism::ProgramNode
p node.location.slice # => "1 + 2"

call = node.statements.body[0]
p call.type                    # => :call_node
p call.child_nodes.size        # => 3
p call.compact_child_nodes.size # => 2
```

- **SEE** [Prism::ParseResult](../class/Prism=3a=3aParseResult.md), [Prism::Location](../class/Prism=3a=3aLocation.md)

## Class Methods

- [fields](../method/Prism=3a=3aNode/s/fields.md)
- [type](../method/Prism=3a=3aNode/s/type.md)

## Instance Methods

- [===](../method/Prism=3a=3aNode/i/=3d=3d=3d.md)
- [accept](../method/Prism=3a=3aNode/i/accept.md)
- [breadth_first_search](../method/Prism=3a=3aNode/i/breadth_first_search.md)
- [cached_end_code_units_column](../method/Prism=3a=3aNode/i/cached_end_code_units_column.md)
- [cached_end_code_units_offset](../method/Prism=3a=3aNode/i/cached_end_code_units_offset.md)
- [cached_start_code_units_column](../method/Prism=3a=3aNode/i/cached_start_code_units_column.md)
- [cached_start_code_units_offset](../method/Prism=3a=3aNode/i/cached_start_code_units_offset.md)
- [child_nodes](../method/Prism=3a=3aNode/i/child_nodes.md)
- [comment_targets](../method/Prism=3a=3aNode/i/comment_targets.md)
- [comments](../method/Prism=3a=3aNode/i/comments.md)
- [compact_child_nodes](../method/Prism=3a=3aNode/i/compact_child_nodes.md)
- [copy](../method/Prism=3a=3aNode/i/copy.md)
- [deconstruct](../method/Prism=3a=3aNode/i/deconstruct.md)
- [deconstruct_keys](../method/Prism=3a=3aNode/i/deconstruct_keys.md)
- [each_child_node](../method/Prism=3a=3aNode/i/each_child_node.md)
- [end_character_column](../method/Prism=3a=3aNode/i/end_character_column.md)
- [end_character_offset](../method/Prism=3a=3aNode/i/end_character_offset.md)
- [end_column](../method/Prism=3a=3aNode/i/end_column.md)
- [end_line](../method/Prism=3a=3aNode/i/end_line.md)
- [end_offset](../method/Prism=3a=3aNode/i/end_offset.md)
- [inspect](../method/Prism=3a=3aNode/i/inspect.md)
- [leading_comments](../method/Prism=3a=3aNode/i/leading_comments.md)
- [location](../method/Prism=3a=3aNode/i/location.md)
- [newline?](../method/Prism=3a=3aNode/i/newline=3f.md)
- [node_id](../method/Prism=3a=3aNode/i/node_id.md)
- [pretty_print](../method/Prism=3a=3aNode/i/pretty_print.md)
- [script_lines](../method/Prism=3a=3aNode/i/script_lines.md)
- [slice](../method/Prism=3a=3aNode/i/slice.md)
- [slice_lines](../method/Prism=3a=3aNode/i/slice_lines.md)
- [source_lines](../method/Prism=3a=3aNode/i/source_lines.md)
- [start_character_column](../method/Prism=3a=3aNode/i/start_character_column.md)
- [start_character_offset](../method/Prism=3a=3aNode/i/start_character_offset.md)
- [start_column](../method/Prism=3a=3aNode/i/start_column.md)
- [start_line](../method/Prism=3a=3aNode/i/start_line.md)
- [start_offset](../method/Prism=3a=3aNode/i/start_offset.md)
- [static_literal?](../method/Prism=3a=3aNode/i/static_literal=3f.md)
- [to_dot](../method/Prism=3a=3aNode/i/to_dot.md)
- [trailing_comments](../method/Prism=3a=3aNode/i/trailing_comments.md)
- [tunnel](../method/Prism=3a=3aNode/i/tunnel.md)
- [type](../method/Prism=3a=3aNode/i/type.md)
