# Rinda::TupleSpaceProxy#take

### def take(tuple, sec = nil) -> Array | Hash

tuple にマッチするタプルをタプルスペースから取り出して返します。

内部的にはリモートオブジェクトの [Rinda::TupleSpace#take](../../../method/Rinda=3a=3aTupleSpace/i/take.md) にフォワードされます。
詳細は [Rinda::TupleSpace#take](../../../method/Rinda=3a=3aTupleSpace/i/take.md) を参照してください。

- **param** `tuple` -- タプルのパターン
- **param** `sec` -- タイムアウト秒数
- **raise** `Rinda::RequestExpiredError` -- take がタイムアウトした場合に発生します
- **raise** `Ridna::RequestCanceledError` -- take が何らかの理由でキャンセルされた場合に発生します。
