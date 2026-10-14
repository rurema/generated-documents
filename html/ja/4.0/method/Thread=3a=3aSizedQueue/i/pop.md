# Thread::SizedQueue#pop

### def pop(non_block = false, timeout: nil)   -> object | nil
### def shift(non_block = false, timeout: nil) -> object | nil
### def deq(non_block = false, timeout: nil)   -> object | nil

キューからひとつ値を取り出します。
キューに push しようと待っているスレッドがあれば、実行を再開させます。

`timeout` を指定した場合は、その秒数が経過してもキューが空のままであれば、`nil` を返します。

- **param** `non_block` -- true を与えると、キューが空の時に例外 [ThreadError](../../../class/ThreadError.md) が発生します。
- **param** `timeout` -- 待つ秒数を数値で指定します。`nil` の場合は無期限に待ちます。`non_block` が真のときに指定することはできません。
- **raise** `ArgumentError` -- `non_block` が真のときに `timeout` を指定した場合に発生します。

```ruby title="例"
q = Thread::SizedQueue.new(4)

th1 = Thread.start do
  while resource = q.pop
    puts resource
  end
end

[:resource1, :resource2, :resource3, nil].each{|r|
  q.push(r)
}

p th1.join
# => resource1
# resource2
# resource3
```

```ruby title="例: nonblock = true"
q = Thread::SizedQueue.new(4)

th1 = Thread.start do
  while resource = q.pop
    puts resource
  end
end

[:resource1, :resource2, :resource3, nil].each{|r|
  q.push(r)
}

begin
  th1.join
  q.pop(true)
rescue => e
  p e
  p e.message
end

# => resource1
# resource2
# resource3
# => #<ThreadError: queue empty>
# => "queue empty"
```

- **SEE** [Thread::Queue#pop](../../../method/Thread=3a=3aQueue/i/pop.md)
