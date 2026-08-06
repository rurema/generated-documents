# Rinda::TupleSpace#read

### def read(tuple, sec=nil) -> [Array|Hash]
タプルスペース内の tuple にマッチするタプルを一つコピーして返します。

このメソッド呼び出しが終了しても、タプルスペースからタプルは取り除かれません。

tuple で指定できるパターンについては [rinda/rinda#tuplepattern](../../../library/rinda=2frinda.md#tuplepattern) を参照してください。

マッチするタプルが存在しない場合は、マッチするタプルがタプルスペースに投入されるまで待ちます。

sec でタイムアウト秒数を指定できます。
待ち時間が sec 秒を過ぎた時には read をあきらめ例外 [Rinda::RequestExpiredError](../../../class/Rinda=3a=3aRequestExpiredError.md) を発生させます。
sec に nil を指定するとタイムアウトせずに無限に待ち続けます。

- **param** `tuple` -- タプルのパターン
- **param** `sec` -- タイムアウト秒数
- **raise** `Rinda::RequestExpiredError` -- read がタイムアウトした場合に発生します
- **raise** `Ridna::RequestCanceledError` -- read が何らかの理由でキャンセルされた場合に発生します。
