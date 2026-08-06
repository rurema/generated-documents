# Thread::Mutex#locked?

### def locked? -> bool

mutex がロックされている時、真を返します。

```ruby title="例"
m = Thread::Mutex.new
p m.locked? # => false
m.lock
p m.locked? # => true
```
