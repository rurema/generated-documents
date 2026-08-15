names=add_option
visibility=public
kind=defined
source_location=manual/api/rubygems/command.md
since_by_name=add_option=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def add_option(*opts){|value, options| ... }

コマンドに対するコマンドラインオプションとハンドラを追加します。

ブロックには、コマンドライン引数の値とそのオプションが渡されます。
オプションはハッシュになっています。

- **param** `opts` -- オプションを指定します。

- **SEE** [m:OptionParser#make_switch]

