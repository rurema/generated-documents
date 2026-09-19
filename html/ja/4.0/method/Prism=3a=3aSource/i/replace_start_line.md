# Prism::Source#replace_start_line

### def replace_start_line(start_line) -> ()

開始行の行番号を `start_line` に置き換えます。

- **param** `start_line` -- 新しい開始行の行番号を指定します。

```ruby title="例"
require "prism"

source = Prism.parse("1 + 2").source
source.replace_start_line(10)
p source.start_line
# => 10
```

- **SEE** [Prism::Source#start_line](../../../method/Prism=3a=3aSource/i/start_line.md)
