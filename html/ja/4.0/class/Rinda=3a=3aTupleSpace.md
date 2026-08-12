# class Rinda::TupleSpace < Object

Tuple Space を表すクラスです。

このクラスのインスタンスを
[drb](../library/drb.md) を経由して公開することでタプルスペースを他のプロセスからアクセスさせることができるようになります。

タプルスペースを drb 経由で利用する側は
[DRb::DRbObject.new_with_uri](../method/DRb=3a=3aDRbObject/s/new_with_uri.md) などでこのオブジェクトのリモートオブジェクトを取得し、[Rinda::TupleSpaceProxy](../class/Rinda=3a=3aTupleSpaceProxy.md) をかぶせることで利用します。

### タプルの寿命と renewer {#renewer}

タプルを [Rinda::TupleSpace#write](../method/Rinda=3a=3aTupleSpace/i/write.md) などで追加するときにその寿命を秒数で指定できます。
タプルをタプルスペースに追加してからその秒数過ぎるとタプルは削除されます。

ただし、指定秒数を過ぎてもすぐには削除されず、[Rinda::TupleSpace.new](../method/Rinda=3a=3aTupleSpace/s/new.md) の引数で指定した秒数ごとに「掃除用スレッド」が動き、それによって
cancel されたタプルや期限切れになったタプルが削除されます。

sec には秒数の代わりに renewer を指定することもできます。
これは renew という名前を持つオブジェクトで、上で説明した掃除用スレッドによって renew メソッドが呼び出されます。renew が 正の秒数を返した場合、有効期限がその秒数に更新されます。ただし、renew はタプルの有効期限が切れていない場合のみ呼び出されます(有効期限切れのタプルは削除されます)。

[Rinda::SimpleRenewer](../class/Rinda=3a=3aSimpleRenewer.md) はシンプルな renewer で renewer のサンプル実装でもあります。このクラスはデフォルトで寿命を180秒後に変更します。つまりこのクラスのインスタンスを renewer に指定すると無限に renew され続けるように思われますが、そうではありません。このクラスは
[DRb::DRbUndumped](../class/DRb=3a=3aDRbUndumped.md) を include しているので、オブジェクトが生成されたプロセスが止まるとそのオブジェクトは無効になります。その時点でrenewの呼び出しに失敗するようになるので、そこからしばらく(数分)するとそのタプルは有効期限切れとなります。

## Class Methods

- [new](../method/Rinda=3a=3aTupleSpace/s/new.md)

## Instance Methods

- [notify](../method/Rinda=3a=3aTupleSpace/i/notify.md)
- [read](../method/Rinda=3a=3aTupleSpace/i/read.md)
- [read_all](../method/Rinda=3a=3aTupleSpace/i/read_all.md)
- [take](../method/Rinda=3a=3aTupleSpace/i/take.md)
- [write](../method/Rinda=3a=3aTupleSpace/i/write.md)
