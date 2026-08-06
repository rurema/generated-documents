# Thread::Queue#clear

### def clear -> ()

キューを空にします。返り値は不定です。

```ruby title="例"
q = Thread::Queue.new

[:resource1, :resource2, :resource3, nil].each { |r| q.push(r) }

p q.length # => 4
q.clear
p q.length # => 0
```
