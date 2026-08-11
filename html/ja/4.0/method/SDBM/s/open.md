# SDBM.open

### def SDBM.open(dbname, mode = 0666) -> SDBM
### def SDBM.open(dbname, mode = 0666) {|db| ... } -> object

dbname で指定したデータベースをモードを mode に設定してオープンします。

- **param** `dbname` -- データベースの名前を指定します。

- **param** `mode` -- 省略値は 0666 です。mode として nil を指定するとデータベースが存在しない時には新たなデータベースを作らず nil を返します。
