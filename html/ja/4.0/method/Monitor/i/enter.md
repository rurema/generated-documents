# Monitor#enter

### def enter -> ()
### def mon_enter -> ()

モニターをロックします。

一度に一つのスレッドだけがモニターをロックできます。
既にモニターがロックされている場合は、ロックが開放されるまでそのスレッドは待ちます。

[Thread::Mutex#lock](../../../method/Thread=3a=3aMutex/i/lock.md) に相当します。
Thread::Mutex#lock と違うのは現在のモニターの所有者が現在実行されているスレッドである場合、何度でもロックできる点です。ロックした回数だけ [Monitor#exit](../../../method/Monitor/i/exit.md) を呼ばなければモニターは解放されません。

```ruby title="例"
require 'monitor'
mon = Monitor.new
mon.enter
mon.enter
```

Thread::Mutex#lock ではデッドロックが起きます。

```ruby title="Mutex でデッドロックする例"
m = Mutex.new
m.lock
m.lock # => deadlock; recursive locking (ThreadError)
```
