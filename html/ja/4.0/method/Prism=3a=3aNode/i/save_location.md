# Prism::Node#save_location

### def save_location(repository) -> Prism::Relocation::Entry

`self` の位置情報を `repository` に保存し、後で参照するための `Prism::Relocation::Entry` を返します。

[Prism::Node#save](../../../method/Prism=3a=3aNode/i/save.md) とは異なり、ノードそのものではなく [Prism::Node#location](../../../method/Prism=3a=3aNode/i/location.md) だけを保存します。

- **param** `repository` -- 保存先の `Prism::Relocation::Repository` を指定します。

```ruby title="例"
require "prism"

result = Prism.parse("1 + 2")
node = result.value.statements.body[0]

repository = Prism::Relocation.filepath("sample.rb")
entry = node.save_location(repository)
p entry.class
# => Prism::Relocation::Entry
```

- **SEE** [Prism::Node#save](../../../method/Prism=3a=3aNode/i/save.md)
