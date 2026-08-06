# MonitorMixin#mon_exit

### def mon_exit -> ()

モニターのロックを解放します。

mon_enter でロックした回数だけ mon_exit を呼ばなければモニターは解放されません。

モニターが解放されればモニターのロック待ちになっていたスレッドが一つ実行を再開します。

- **raise** `ThreadError` -- ロックを持っていないスレッドが呼びだした場合に発生します
