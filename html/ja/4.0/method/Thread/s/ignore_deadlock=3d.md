# Thread.ignore_deadlock=

### def Thread.ignore_deadlock=(bool)

デッドロック検知を無視する機能をon/offします。デフォルト値はfalseです。

trueを渡すとデッドロックを検知しなくなります。

```ruby
Thread.ignore_deadlock = true
queue = Thread::Queue.new

trap(:SIGUSR1){queue.push "Received signal"}

# ignore_deadlockがfalseだとエラーが発生する
puts queue.pop
```

- **SEE** [Thread.ignore_deadlock](../../../method/Thread/s/ignore_deadlock.md)
