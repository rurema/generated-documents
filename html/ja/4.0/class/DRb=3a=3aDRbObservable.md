# module DRb::DRbObservable

DRb 用の修正をした [Observable](../class/Observable.md) モジュールです。
通常の Observable と同様に利用します。

詳しくは Observable のリファレンスを見てください。

[Observable#notify_observers](../method/Observable/i/notify_observers.md) で各オブザーバに更新を通知したときに例外を発生させたオブジェクトをオブザーバのリストから削除します。
またその例外は破棄されます。

つまり、このモジュールは、エラーを起こしたオブザーバは無視してしまうのが適切な場合に用います。
