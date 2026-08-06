# Thread::Queue#deq

### def pop(non_block = false) -> object
### def shift(non_block = false) -> object
### def deq(non_block = false) -> object

キューからひとつ値を取り出します。キューが空の時、呼出元のスレッドは停止します。

- **param** `non_block` -- true を与えると、キューが空の時に例外 [ThreadError](../../../class/ThreadError.md) が発生します。

```ruby title="例"
q = Thread::Queue.new

th1 = Thread.start do
  while resource = q.pop
    puts resource
  end
end

[:resource1, :resource2, :resource3, nil].each { |r|
  q.push(r)
}

th1.join
```

```ruby title="例: nonblock = true"
q = Thread::Queue.new

th1 = Thread.start do
  while resource = q.pop
    puts resource
  end
end

[:resource1, :resource2, :resource3, nil].each { |r|
  q.push(r)
}

begin
  th1.join
  q.pop(true)
rescue => e
  p e
  p e.message
end

# => resource1
# resource2
# resource3
# => #<ThreadError: queue empty>
# => "queue empty"
```
