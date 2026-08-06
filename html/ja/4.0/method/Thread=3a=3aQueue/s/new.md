# Thread::Queue.new

### def Thread::Queue.new -> Thread::Queue
### def Thread::Queue.new(items) -> Thread::Queue

新しいキューオブジェクトを生成します。

- **param** `items` -- 初期値を Enumerable で指定します。

```ruby
q = Thread::Queue.new
q = Thread::Queue.new([a, b, c])
q = Thread::Queue.new(items)
```
