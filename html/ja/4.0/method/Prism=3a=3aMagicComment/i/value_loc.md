# Prism::MagicComment#value_loc

### def value_loc -> Prism::Location

値のソースコード上の位置を表す [Prism::Location](../../../class/Prism=3a=3aLocation.md) を返します。

```ruby title="例"
require "prism"

magic = Prism.parse("# coding: utf-8\np 1\n").magic_comments.first
p magic.key_loc.slice   # => "coding"
p magic.value_loc.slice # => "utf-8"
```
