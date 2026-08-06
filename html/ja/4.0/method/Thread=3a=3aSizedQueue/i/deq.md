# Thread::SizedQueue#deq

### def pop(non_block = false)   -> object
### def shift(non_block = false) -> object
### def deq(non_block = false)   -> object

キューからひとつ値を取り出します。
キューに push しようと待っているスレッドがあれば、実行を再開させます。

- **param** `non_block` -- true を与えると、キューが空の時に例外 [ThreadError](../../../class/ThreadError.md) が発生します。

```ruby title="例"
q = Thread::SizedQueue.new(4)

th1 = Thread.start do
  while resource = q.pop
    puts resource
  end
end

[:resource1, :resource2, :resource3, nil].each{|r|
  q.push(r)
}

p th1.join
# => resource1
# resource2
# resource3
```

```ruby title="例: nonblock = true"
q = Thread::SizedQueue.new(4)

th1 = Thread.start do
  while resource = q.pop
    puts resource
  end
end

[:resource1, :resource2, :resource3, nil].each{|r|
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

- **SEE** [Thread::Queue#pop](../../../method/Thread=3a=3aQueue/i/pop.md)
