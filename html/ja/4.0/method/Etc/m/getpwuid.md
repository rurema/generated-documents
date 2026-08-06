# Etc?.getpwuid

### module_function def getpwuid(uid = getuid) -> Etc::Passwd

passwd データベースを検索し、ユーザ ID が uid である passwd エントリを返します。

- **param** `uid` -- 検索する uid 。引数を省略した場合には [man:getuid(2)] の値を用います。

- **raise** `ArgumentError` -- エントリが見つからなかった場合に発生します。

- **SEE** [man:getpwuid(3)], [Etc::Passwd](../../../class/Etc=3a=3aPasswd.md)
