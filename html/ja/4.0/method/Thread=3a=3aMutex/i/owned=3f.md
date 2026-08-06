# Thread::Mutex#owned?

### def owned? -> bool
{: since="2.0.0"}

self がカレントスレッドによってロックされている場合に true を返します。
そうでない場合に false を返します。

```ruby title="例"
m = Thread::Mutex.new
p m.owned? # => false
m.lock
Thread.new do
  p m.owned? # => false
end.join
p m.owned? # => true
```
