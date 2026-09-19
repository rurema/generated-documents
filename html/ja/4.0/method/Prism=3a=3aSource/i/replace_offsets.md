# Prism::Source#replace_offsets

### def replace_offsets(offsets) -> ()

内部で保持している、各行の開始バイトオフセットの配列を `offsets` に置き換えます。

- **param** `offsets` -- 新しい開始バイトオフセットの配列を指定します。

```ruby title="例"
require "prism"

source = Prism.parse("1 + 2").source
source.replace_offsets([0, 6])
p source.offsets
# => [0, 6]
```

- **SEE** [Prism::Source#offsets](../../../method/Prism=3a=3aSource/i/offsets.md)
