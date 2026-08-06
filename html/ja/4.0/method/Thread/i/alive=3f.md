# Thread#alive?

### def alive?     -> bool

スレッドが「生きている」時、true を返します。

```ruby title="例"
thr = Thread.new { }
p thr.join              # => #<Thread:0x401b3fb0 dead>
p Thread.current.alive? # => true
p thr.alive?            # => false
```

[Thread#status](../../../method/Thread/i/status.md) が真を返すなら、このメソッドも真です。

- **SEE** [Thread#status](../../../method/Thread/i/status.md), [Thread#stop?](../../../method/Thread/i/stop=3f.md)
