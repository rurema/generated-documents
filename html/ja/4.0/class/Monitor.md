# class Monitor < Object

スレッドの同期機構としてのモニター機能を提供するクラスです。
また同じスレッドから何度も lock できる Mutex としての機能も提供します。

[MonitorMixin](../class/MonitorMixin.md) を include し、いくつかの別名を定義したクラスです。

### 例

```ruby title="消費者、生産者問題の例"
require 'monitor'

buf = []
mon = Monitor.new
empty_cond = mon.new_cond

# consumer
Thread.start do
  loop do
    mon.synchronize do
      empty_cond.wait_while { buf.empty? }
      print buf.shift
    end
  end
end

# producer
while line = ARGF.gets
  mon.synchronize do
    buf.push(line)
    empty_cond.signal
  end
end
```

2回ロックしてもデッドロックにならない例です。

```ruby title="デッドロックにならない例"
require 'monitor'
mon = Monitor.new
mon.synchronize {
  mon.synchronize {
  }
}
```

[Thread::Mutex](../class/Thread=3a=3aMutex.md) ではデッドロックになります。

```ruby title="Mutex でデッドロックになる例"
mx = Mutex.new
mx.synchronize {
  mx.synchronize {
  }
}
# => deadlock; recursive locking (ThreadError)
```

## Class Methods

- [new](../method/Monitor/s/new.md)

## Instance Methods

- [enter](../method/Monitor/i/enter.md)
- [mon_enter](../method/Monitor/i/mon_enter.md)
- [exit](../method/Monitor/i/exit.md)
- [mon_exit](../method/Monitor/i/mon_exit.md)
- [mon_check_owner](../method/Monitor/i/mon_check_owner.md)
- [mon_locked?](../method/Monitor/i/mon_locked=3f.md)
- [mon_owned?](../method/Monitor/i/mon_owned=3f.md)
- [mon_synchronize](../method/Monitor/i/mon_synchronize.md)
- [synchronize](../method/Monitor/i/synchronize.md)
- [mon_try_enter](../method/Monitor/i/mon_try_enter.md)
- [try_enter](../method/Monitor/i/try_enter.md)
- [try_mon_enter](../method/Monitor/i/try_mon_enter.md)
- [new_cond](../method/Monitor/i/new_cond.md)
- [wait_for_cond](../method/Monitor/i/wait_for_cond.md)
