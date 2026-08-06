# class Rinda::TupleEntry < Object

タプルスペース内に含まれるタプルを管理するためのクラスです。
タプルの有効期限を管理し、タプルのキャンセル操作ができます。

[Rinda::TupleSpace#write](../method/Rinda=3a=3aTupleSpace/i/write.md) はこのオブジェクトを返し、それを利用してタプルを明示的にキャンセルできます。

ただし、タプルスペースのあるプロセスがタプルを投入したプロセスと異なる場合、これを受け取る側はリモートオブジェクトによってこのオブジェクトを参照します。そのためタプルスペースのプロセス側では参照切れによるGCが発生し、TupleEntryオブジェクトが消滅してしまうかもしれません。
これを防ぐには何らかの仕掛けが必要でしょう。詳しくは [drb](../library/drb.md) のドキュメントを参照してください。

## Instance Methods

- [\[\]](../method/Rinda=3a=3aTupleEntry/i/=5b=5d.md)
- [alive?](../method/Rinda=3a=3aTupleEntry/i/alive=3f.md)
- [cancel](../method/Rinda=3a=3aTupleEntry/i/cancel.md)
- [canceled?](../method/Rinda=3a=3aTupleEntry/i/canceled=3f.md)
- [expired?](../method/Rinda=3a=3aTupleEntry/i/expired=3f.md)
- [expires](../method/Rinda=3a=3aTupleEntry/i/expires.md)
- [expires=](../method/Rinda=3a=3aTupleEntry/i/expires=3d.md)
- [fetch](../method/Rinda=3a=3aTupleEntry/i/fetch.md)
- [renew](../method/Rinda=3a=3aTupleEntry/i/renew.md)
- [size](../method/Rinda=3a=3aTupleEntry/i/size.md)
- [value](../method/Rinda=3a=3aTupleEntry/i/value.md)
