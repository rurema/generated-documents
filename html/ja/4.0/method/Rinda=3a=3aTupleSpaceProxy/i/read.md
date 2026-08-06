# Rinda::TupleSpaceProxy#read

### def read(tuple, sec=nil) -> [Array|Hash]

タプルスペース内の tuple にマッチするタプルを一つコピーして返します。

内部的にはリモートオブジェクトの [Rinda::TupleSpace#read](../../../method/Rinda=3a=3aTupleSpace/i/read.md) にフォワードされます。
詳細は [Rinda::TupleSpace#read](../../../method/Rinda=3a=3aTupleSpace/i/read.md) を参照してください。

- **param** `tuple` -- タプルのパターン
- **param** `sec` -- タイムアウト秒数
- **raise** `Rinda::RequestExpiredError` -- read がタイムアウトした場合に発生します
- **raise** `Ridna::RequestCanceledError` -- read が何らかの理由でキャンセルされた場合に発生します。
