# Thread#run

### def run    -> self

停止状態(stop)のスレッドを再開させます。
[Thread#wakeup](../../../method/Thread/i/wakeup.md) と異なりすぐにスレッドの切り替えを行います。

- **raise** `ThreadError` -- 死んでいるスレッドに対して実行すると発生します。

```ruby title="例"
a = Thread.new { puts "a"; Thread.stop; puts "c" }
sleep 0.1 while a.status!='sleep'
puts "Got here"
a.run
a.join
# => a
# => Got here
# => c
```

- **SEE** [Thread#wakeup](../../../method/Thread/i/wakeup.md), [Thread.stop](../../../method/Thread/s/stop.md)
