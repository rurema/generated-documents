# Prism::Node#save

### def save(repository) -> Prism::Relocation::Entry

`self` を `repository` に保存し、後で参照するための `Prism::Relocation::Entry` を返します。

構文木全体をメモリ上に保持し続けることなく、[Prism::Node#node_id](../../../method/Prism=3a=3aNode/i/node_id.md) を使ってノードを後から再特定するための仕組み(`Prism::Relocation`)で使われます。

- **param** `repository` -- 保存先の `Prism::Relocation::Repository` を指定します。

```ruby title="例"
require "prism"

result = Prism.parse("1 + 2")
node = result.value.statements.body[0]

repository = Prism::Relocation.filepath("sample.rb")
entry = node.save(repository)
p entry.class
# => Prism::Relocation::Entry
```

- **SEE** [Prism::Node#save_location](../../../method/Prism=3a=3aNode/i/save_location.md), [Prism::Node#node_id](../../../method/Prism=3a=3aNode/i/node_id.md)
