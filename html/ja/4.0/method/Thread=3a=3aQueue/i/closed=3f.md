# Thread::Queue#closed?

### def closed? -> bool

キューが close されている時に true を返します。

```ruby title="例"
q = Thread::Queue.new

[:resource1, :resource2, :resource3, nil].each { |r| q.push(r) }

p q.closed? # => false
q.close
p q.closed? # => true
```
