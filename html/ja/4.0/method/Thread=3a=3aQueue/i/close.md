# Thread::Queue#close

### def close -> self

キューを close します。close 済みのキューを再度 open することはできません。

close 後は以下のように動作します。

- [Thread::Queue#closed?](../../../method/Thread=3a=3aQueue/i/closed=3f.md) は true を返します
- [Thread::Queue#close](../../../method/Thread=3a=3aQueue/i/close.md) は無視されます
- [Thread::Queue#enq](../../../method/Thread=3a=3aQueue/i/enq.md)/push/<< は [ClosedQueueError](../../../class/ClosedQueueError.md) を発生します
- [Thread::Queue#empty?](../../../method/Thread=3a=3aQueue/i/empty=3f.md) が false を返す場合は [Thread::Queue#deq](../../../method/Thread=3a=3aQueue/i/deq.md)/pop/shift は通常通りオブジェクトを返します

また、[ClosedQueueError](../../../class/ClosedQueueError.md) は [StopIteration](../../../class/StopIteration.md) を継承しているため、
close する事でループから脱出する事もできます。

例:

```ruby
q = Thread::Queue.new
Thread.new{
  while e = q.deq # wait for nil to break loop
    # ...
  end
}
q.close
```
