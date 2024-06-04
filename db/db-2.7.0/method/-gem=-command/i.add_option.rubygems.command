names=add_option
visibility=public
kind=defined
source_location=refm/api/src/rubygems/command.rd:18

--- add_option(*opts){|value, options| ... }

コマンドに対するコマンドラインオプションとハンドラを追加します。

ブロックには、コマンドライン引数の値とそのオプションが渡されます。
オプションはハッシュになっています。

@param opts オプションを指定します。

@see [[m:OptionParser#make_switch]]

