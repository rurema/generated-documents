# MonitorMixin::ConditionVariable#wait_while

### def wait_while { ... } -> ()

モニタのロックを開放し、現在のスレッドをブロックで指定した条件を満たしている間停止します。

[MonitorMixin::ConditionVariable#signal](../../../method/MonitorMixin=3a=3aConditionVariable/i/signal.md) や
[MonitorMixin::ConditionVariable#broadcast](../../../method/MonitorMixin=3a=3aConditionVariable/i/broadcast.md) でスレッドが起こされると、ロックを取得し、ブロックを評価しその結果によってこのメソッドから抜け処理を継続するか再びロックを開放しスレッドを停止するかを決めます。

- **raise** `ThreadError` -- ロックを持っていないスレッドがこのメソッドを呼びだした場合に発生します
- **SEE** [MonitorMixin::ConditionVariable#wait](../../../method/MonitorMixin=3a=3aConditionVariable/i/wait.md)
