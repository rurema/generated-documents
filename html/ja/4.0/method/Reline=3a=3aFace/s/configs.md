# Reline::Face.configs

### def Reline::Face.configs -> Hash

定義されているすべての face の設定内容をハッシュで返します。

```ruby title="例"
require 'reline'

Reline::Face.configs.keys
# => [:default, :completion_dialog]
Reline::Face.configs[:default]
# => {default: {style: :reset, escape_sequence: "\e[0m"},
#     enhanced: {style: :reset, escape_sequence: "\e[0m"},
#     scrollbar: {style: :reset, escape_sequence: "\e[0m"}}
```
