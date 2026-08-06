# Etc?.getgrent

### module_function def getgrent -> Etc::Group | nil

/etc/group ファイルから読み込んだエントリを一つ返します。

最初の呼び出しでは、先頭のエントリを返します。それ以降の呼び出しでは、呼び出す度に次のエントリを順に返します。ファイルの終端に達すると nil を返します。

処理が終了したときは [Etc?.endgrent](../../../method/Etc/m/endgrent.md) を呼び出すようにしてください。

- **SEE** [man:getgrent(3)], [Etc::Group](../../../class/Etc=3a=3aGroup.md)
