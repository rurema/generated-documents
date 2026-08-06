# Thread::Queue#length

### def length -> Integer
### def size -> Integer

キューの長さを返します。

```ruby title="例"
q = Thread::Queue.new

[:resource1, :resource2, :resource3, nil].each { |r| q.push(r) }

p q.length # => 4
```
