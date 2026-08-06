# Gem::Command#add_option

### def add_option(*opts){|value, options| ... }

コマンドに対するコマンドラインオプションとハンドラを追加します。

ブロックには、コマンドライン引数の値とそのオプションが渡されます。
オプションはハッシュになっています。

- **param** `opts` -- オプションを指定します。

- **SEE** [OptionParser#make_switch](../../../method/OptionParser/i/make_switch.md)
