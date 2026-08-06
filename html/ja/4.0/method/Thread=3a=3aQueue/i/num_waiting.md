# Thread::Queue#num_waiting

### def num_waiting -> Integer

キューを待っているスレッドの数を返します。

```ruby title="例"
q = Thread::SizedQueue.new(1)
q.push(1)
t = Thread.new { q.push(2) }
sleep 0.05 until t.stop?
p q.num_waiting # => 1

q.pop
t.join
```
