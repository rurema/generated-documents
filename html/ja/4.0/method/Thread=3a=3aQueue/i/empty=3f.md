# Thread::Queue#empty?

### def empty? -> bool

キューが空の時、真を返します。

```ruby title="例"
q = Thread::Queue.new
p q.empty? # => true
q.push(:resource)
p q.empty? # => false
```
