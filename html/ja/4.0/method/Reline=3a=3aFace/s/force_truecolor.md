# Reline::Face.force_truecolor

### def Reline::Face.force_truecolor -> ()

端末がトゥルーカラー対応かどうかの判定を、環境変数 `COLORTERM`
の値によらず強制的に真にします。

```ruby title="例: 24 ビットカラーで補完ダイアログの色を指定する"
require 'reline'

Reline::Face.force_truecolor
Reline::Face.config(:completion_dialog) do |conf|
  conf.define :default, foreground: "#dddddd", background: "#333333"
end
```

- **SEE** [Reline::Face.truecolor?](../../../method/Reline=3a=3aFace/s/truecolor=3f.md)
