# Thread::SizedQueue#close

### def close -> self

キューを close します。詳しくは [Thread::Queue#close](../../../method/Thread=3a=3aQueue/i/close.md) を参照してください。

[Thread::Queue](../../../class/Thread=3a=3aQueue.md) とはキューにオブジェクトを追加するスレッドの動作が異なります。キューにオブジェクトを追加するスレッドを待機している場合は
[ClosedQueueError](../../../class/ClosedQueueError.md) が発生して中断されます。

```ruby title="例"
q = Thread::SizedQueue.new(4)

[:resource1, :resource2, :resource3, nil].each { |r| q.push(r) }

p q.closed? # => false
q.close
p q.closed? # => true
```

- **SEE** [Thread::Queue#close](../../../method/Thread=3a=3aQueue/i/close.md)
