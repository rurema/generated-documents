# Rinda::TupleSpace#read_all

### def read_all(tuple) -> [Array|Hash]

タプルスペース内の tuple にマッチするタプルをすべてコピーして返します。

このメソッド呼び出しが終了しても、タプルスペースからタプルは取り除かれません。

tuple で指定できるパターンについては [rinda/rinda#tuplepattern](../../../library/rinda=2frinda.md#tuplepattern) を参照してください。

マッチするタプルが存在しない場合は、待たずに空の配列を返します。

このメソッドは主にデバッグのための利用を想定しています。

- **param** `tuple` -- タプルのパターン
