# Win32::Registry#write

### def write(name, type, data)
@todo

レジストリ値 name に型 type で data を書き込みます。
name が nil の場合、(標準) レジストリ値に書き込みます。

type はレジストリ値の型です。(⇒[Win32::Registry::Constants](../../../class/Win32=3a=3aRegistry=3a=3aConstants.md))
data のクラスは [Win32::Registry#read](../../../method/Win32=3a=3aRegistry/i/read.md)
メソッドに準じていなければなりません。
