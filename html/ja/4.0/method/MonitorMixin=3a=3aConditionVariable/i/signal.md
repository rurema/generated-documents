# MonitorMixin::ConditionVariable#signal

### def signal -> ()

その条件変数で待っているスレッドがあれば実行を再開させます。

複数のスレッドが待っている場合には1つのスレッドのみ実行を再開します。

- **SEE** [MonitorMixin::ConditionVariable#broadcast](../../../method/MonitorMixin=3a=3aConditionVariable/i/broadcast.md)
