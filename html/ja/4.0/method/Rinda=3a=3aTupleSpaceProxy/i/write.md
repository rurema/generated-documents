# Rinda::TupleSpaceProxy#write

### def write(tuple, sec = nil) -> Rinda::TupleEntry

tuple をタプルスペースに加えます。
tuple を管理するための [Rinda::TupleEntry](../../../class/Rinda=3a=3aTupleEntry.md) オブジェクトを返します。

内部的にはリモートオブジェクトの [Rinda::TupleSpace#write](../../../method/Rinda=3a=3aTupleSpace/i/write.md) にフォワードされます。
詳細は [Rinda::TupleSpace#write](../../../method/Rinda=3a=3aTupleSpace/i/write.md) を参照してください。

- **param** `tuple` -- 追加する tuple (配列かHash)
- **param** `sec` -- 有効期限(秒数)
