# GDBM.open

### def GDBM.open(dbname, mode = 0666, flags = 0) -> GDBM
### def GDBM.open(dbname, mode = 0666, flags = 0) {|db| ... } -> object

dbname で指定したデータベースをモードを mode に設定してオープンします。

ブロックを指定した場合、オープンした GDBM オブジェクトを引数にブロックを実行します。実行後 GDBM オブジェクトをクローズし、open メソッドはブロックの結果を返します。

- **param** `dbname` -- データベースの名前を指定します。

- **param** `mode` -- 省略値は 0666 です。mode として nil を指定するとデータベースが存在しない時には新たなデータベースを作らず nil を返します。

- **param** `flags` -- flags には、[GDBM::FAST](../../../method/GDBM/c/FAST.md), [GDBM::SYNC](../../../method/GDBM/c/SYNC.md), [GDBM::NOLOCK](../../../method/GDBM/c/NOLOCK.md)
             の論理和を指定します。デフォルト値は指定なし(つまり0)です。
             flags に [GDBM::READER](../../../method/GDBM/c/READER.md), [GDBM::WRITER](../../../method/GDBM/c/WRITER.md), [GDBM::WRCREAT](../../../method/GDBM/c/WRCREAT.md), [GDBM::NEWDB](../../../method/GDBM/c/NEWDB.md)
             のいずれかを与えて読み書きのモードを指定できます。
             これらをどれも指定しなかった場合には、
             [GDBM::WRCREAT](../../../method/GDBM/c/WRCREAT.md), [GDBM::WRITER](../../../method/GDBM/c/WRITER.md), [GDBM::READER](../../../method/GDBM/c/READER.md) の順で試します。

```ruby
require 'gdbm'
GDBM.open("fruitstore.db") do |gdbm|
  gdbm.each_pair do |key, value|
    print "#{key}: #{value}\n"
  end
end
```
