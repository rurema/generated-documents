# Reline.autocompletion=

### def Reline.autocompletion -> bool
### def Reline.autocompletion=(bool)

入力中に補完候補を自動的にダイアログ表示するかどうかを取得/設定します。デフォルトは `false` です。

`true` を指定すると、文字を入力するたびに [Reline.completion_proc](../../../method/Reline/s/completion_proc.md)
が呼ばれ、候補がダイアログに表示されます([irb](../../../library/irb.md) の入力補完表示で使われている機能です)。

- **param** `bool` -- 自動補完表示を有効にするかどうかを真偽値で指定します。
