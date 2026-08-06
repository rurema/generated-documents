# class Thread::Queue < Object

Queue はスレッド間の FIFO(first in first out) の通信路です。スレッドが空のキューを読み出そうとすると停止します。キューになんらかの情報が書き込まれると実行は再開されます。

最大サイズが指定できる Queue のサブクラス [Thread::SizedQueue](../class/Thread=3a=3aSizedQueue.md) も提供されています。

### 例 {#example}

```ruby
q = Thread::Queue.new

th1 = Thread.start do
  while resource = q.pop
    puts resource
  end
end

[:resource1, :resource2, :resource3, nil].each{|r|
  q.push(r)
}

th1.join
```

実行すると以下のように出力します。

```console
$ ruby que.rb
resource1
resource2
resource3
```

## Class Methods

- [new](../method/Thread=3a=3aQueue/s/new.md)

## Instance Methods

- [<<](../method/Thread=3a=3aQueue/i/=3c=3c.md)
- [enq](../method/Thread=3a=3aQueue/i/enq.md)
- [push](../method/Thread=3a=3aQueue/i/push.md)
- [clear](../method/Thread=3a=3aQueue/i/clear.md)
- [close](../method/Thread=3a=3aQueue/i/close.md)
- [closed?](../method/Thread=3a=3aQueue/i/closed=3f.md)
- [deq](../method/Thread=3a=3aQueue/i/deq.md)
- [pop](../method/Thread=3a=3aQueue/i/pop.md)
- [shift](../method/Thread=3a=3aQueue/i/shift.md)
- [empty?](../method/Thread=3a=3aQueue/i/empty=3f.md)
- [length](../method/Thread=3a=3aQueue/i/length.md)
- [size](../method/Thread=3a=3aQueue/i/size.md)
- [num_waiting](../method/Thread=3a=3aQueue/i/num_waiting.md)
