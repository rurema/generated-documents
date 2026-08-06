# Thread#stop?

### def stop?    -> bool

スレッドが終了(dead)あるいは停止(stop)している時、true を返します。

```ruby title="例"
a = Thread.new { Thread.stop }
b = Thread.current
p a.stop? # => true
p b.stop? # => false
```

- **SEE** [Thread#alive?](../../../method/Thread/i/alive=3f.md), [Thread#status](../../../method/Thread/i/status.md)
