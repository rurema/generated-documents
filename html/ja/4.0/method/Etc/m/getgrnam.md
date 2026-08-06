# Etc?.getgrnam

### module_function def getgrnam(name) -> Etc::Group

name という名前のグループエントリを返します。

- **param** `name` -- 検索するグループ名。

- **raise** `ArgumentError` -- エントリが見つからなかった場合に発生します。

- **SEE** [man:getgrnam(3)], [Etc::Group](../../../class/Etc=3a=3aGroup.md)
