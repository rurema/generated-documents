# Thread.stop

### def Thread.stop     -> nil

他のスレッドから [Thread#run](../../../method/Thread/i/run.md) メソッドで再起動されるまで、カレントスレッドの実行を停止します。

```ruby title="例"
a = Thread.new { print "a"; Thread.stop; print "c" }
sleep 0.1 while a.status!='sleep'
print "b"
a.run
a.join
# => "abc"
```

- **SEE** [Thread#run](../../../method/Thread/i/run.md), [Thread#wakeup](../../../method/Thread/i/wakeup.md)
