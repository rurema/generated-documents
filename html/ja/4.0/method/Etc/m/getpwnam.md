# Etc?.getpwnam

### module_function def getpwnam(name) -> Etc::Passwd

passwd データベースを検索し、名前が name である passwd エントリを返します。

- **param** `name` -- 検索するユーザ名。

- **raise** `ArgumentError` -- エントリが見つからなかった場合に発生します。

- **SEE** [man:getpwnam(3)], [Etc::Passwd](../../../class/Etc=3a=3aPasswd.md)
