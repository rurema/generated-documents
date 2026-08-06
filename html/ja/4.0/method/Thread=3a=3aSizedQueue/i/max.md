# Thread::SizedQueue#max

### def max -> Integer

キューの最大サイズを返します。

```ruby title="例"
q = Thread::SizedQueue.new(4)
p q.max # => 4
```
