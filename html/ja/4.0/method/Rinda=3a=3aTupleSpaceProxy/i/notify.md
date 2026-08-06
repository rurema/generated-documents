# Rinda::TupleSpaceProxy#notify

### def notify(ev, tuple, sec = nil)  -> Rinda::NotifyTemplateEntry

event で指定した種類のイベントの監視を開始します。

内部的にはリモートオブジェクトの [Rinda::TupleSpace#notify](../../../method/Rinda=3a=3aTupleSpace/i/notify.md) にフォワードされます。
詳細は [Rinda::TupleSpace#notify](../../../method/Rinda=3a=3aTupleSpace/i/notify.md) 参照してください

- **param** `event` -- 監視対象のイベント(文字列)
- **param** `pattern` -- 監視対象となるタプルのパターン
- **param** `sec` -- 監視期間の長さ(秒数)
