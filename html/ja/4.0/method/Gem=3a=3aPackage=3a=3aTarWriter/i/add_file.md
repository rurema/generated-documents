# Gem::Package::TarWriter#add_file

### def add_file(name, mode) -> self
### def add_file(name, mode){|io| ... } -> self

自身に関連付けられた IO にファイルを追加します。

ブロックを与えると、自身に関連付けられた IO をブロックに渡してブロックを評価します。

- **param** `name` -- 追加するファイルの名前を指定します。

- **param** `mode` -- 追加するファイルのパーミッションを指定します。
