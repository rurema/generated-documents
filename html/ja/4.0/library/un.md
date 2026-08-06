# library un

Unix の基本コマンドの代替となるユーティリティ。

Makefile 内でシステムに依存しないように用意されました。
[mkmf](../library/mkmf.md) が使用します。

Windows などワイルドカードを認識しないシステム(シェル)のために引数は
unがワイルドカード展開([Dir.glob](../method/Dir/s/glob.md)参照)します(Unix ではシェルとunにより二重にワイルドカード展開されます)。

### 使い方:

```console
ruby -run -e cp -- [-prv] SOURCE DEST
ruby -run -e ln -- [-sfv] TARGET LINK_NAME
ruby -run -e mv -- [-v] SOURCE DEST
ruby -run -e rm -- [-frv] FILE
ruby -run -e mkdir -- [-pv] DIRS
ruby -run -e rmdir -- [-v] DIRS
ruby -run -e install -- [-pv -m mode] SOURCE DEST
ruby -run -e chmod -- [-v] OCTAL-MODE FILE
ruby -run -e touch -- [-v] FILE
ruby -run -e wait_writable -- [OPTION] FILE
ruby -run -e mkmf -- [OPTION] EXTNAME [OPTION]
ruby -run -e httpd -- [OPTION] [DocumentRoot]
ruby -run -e help [COMMAND]
```
