# Thread#priority=

### def priority=(val)

スレッドの優先度を設定します。この値が大きいほど優先度が高くなります。

- **param** `val` -- スレッドの優先度を指定します。プラットフォームに依存します。

```ruby title="例"
p Thread.current.priority # => 0

count1 = count2 = 0
a = Thread.new do
      loop { count1 += 1 }
    end
a.priority = -1

b = Thread.new do
      loop { count2 += 1 }
    end
b.priority = -2
count1 = count2 = 0 # reset
p sleep 1 # => 1
p count1  # => 13809431
p count2  # => 11571921
```

- **SEE** [Thread#priority](../../../method/Thread/i/priority.md)
