# Thread::Mutex#try_lock

### def try_lock -> bool
{: since="1.9.1"}

mutex をロックしようとして、ロックが成功した場合、真を返します。
ロックできなかった場合にはブロックせず偽を返します。

```ruby title="例"
m = Thread::Mutex.new
p m.try_lock # => true
p m.try_lock # => false
```
