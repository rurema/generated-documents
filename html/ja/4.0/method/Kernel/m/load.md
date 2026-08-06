# Kernel?.load

### module_function def load(file, priv = false) -> true

Ruby プログラム file をロードして実行します。再ロード可能です。

file が絶対パスのときは file からロードします。
file が相対パスのときは組み込み変数 [m:$:]
に示されるパスとカレントディレクトリを順番に探し、最初に見付かったファイルをロードします。このとき、[m:$:] の要素文字列の先頭文字が
`~` (チルダ) だと、環境変数 HOME の値に展開されます。
また `~USER` はそのユーザのホームディレクトリに展開されます。

ロードに成功した場合は true を返します。

- **param** `file` -- ファイル名の文字列です。
- **param** `priv` -- 真のとき、ロード・実行は内部的に生成される
            無名モジュールをトップレベルとして行われ、
            グローバルな名前空間を汚染しません。
- **raise** `LoadError` -- ロードに失敗した場合に発生します。
- **SEE** [Kernel?.require](../../../method/Kernel/m/require.md)

### require と load の違い

[Kernel?.require](../../../method/Kernel/m/require.md) は同じファイルは一度だけしかロードしませんが、
[Kernel?.load](../../../method/Kernel/m/load.md) は無条件にロードします。
また、require は拡張子.rb や .so を自動的に補完しますが、
load は行いません。
require はライブラリのロード、load は設定ファイルの読み込みなどに使うのが典型的な用途です。

```ruby title="例"
load "#{ENV['HOME']}/.myapprc"
load "/etc/myapprc"
```

なお、特定のディレクトリからファイルをロードしたい場合、
load 'filename' とするのは不適切です。必ず絶対パスを使ってください。
