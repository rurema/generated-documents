# class Reline::Face < Object

補完ダイアログなどの表示スタイル(色・文字装飾)をカスタマイズするためのクラスです。reline 0.4.0(Ruby 3.3 に同梱)で導入されました。

[Reline::Face.config](../method/Reline=3a=3aFace/s/config.md) で「face」(表示スタイルの設定の組)を定義します。既定では次の
2 つの face が定義されています。

- `:default` -- 通常のテキストのスタイル
- `:completion_dialog` -- 補完ダイアログのスタイル

それぞれの face では、次の 3 つの部分のスタイルを定義します。定義しなかった部分は
`style: :reset` になります。

- `:default` -- 基本のスタイル(補完ダイアログでは候補一覧の地の部分)
- `:enhanced` -- 強調部分のスタイル(補完ダイアログでは選択中の候補)
- `:scrollbar` -- スクロールバーのスタイル

```ruby title="例: 補完ダイアログの配色を変更する"
require 'reline'

Reline::Face.config(:completion_dialog) do |conf|
  conf.define :default, foreground: :white, background: :blue
  conf.define :enhanced, foreground: :white, background: :magenta
  conf.define :scrollbar, foreground: :white, background: :blue
end
```

## Class Methods

- [config](../method/Reline=3a=3aFace/s/config.md)
- [configs](../method/Reline=3a=3aFace/s/configs.md)
- [force_truecolor](../method/Reline=3a=3aFace/s/force_truecolor.md)
- [truecolor?](../method/Reline=3a=3aFace/s/truecolor=3f.md)
