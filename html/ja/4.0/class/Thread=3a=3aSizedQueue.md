# class Thread::SizedQueue < Thread::Queue

サイズの最大値を指定できる [Thread::Queue](../class/Thread=3a=3aQueue.md) です。

### 例 {#example}

[ruby-list:283] より。q をサイズ 1 の SizedQueue オブジェクトにすることによって、入力される行と出力される行が同じ順序になります。
q = [] にすると入力と違った順序で行が出力されます。

```ruby
q = Thread::SizedQueue.new(1)

th = Thread.start {
  while line = q.pop
    print line
  end
}

while l = gets
  q.push(l)
end
q.push(l)

th.join
```

## Class Methods

- [new](../method/Thread=3a=3aSizedQueue/s/new.md)

## Instance Methods

- [<<](../method/Thread=3a=3aSizedQueue/i/=3c=3c.md)
- [enq](../method/Thread=3a=3aSizedQueue/i/enq.md)
- [push](../method/Thread=3a=3aSizedQueue/i/push.md)
- [close](../method/Thread=3a=3aSizedQueue/i/close.md)
- [deq](../method/Thread=3a=3aSizedQueue/i/deq.md)
- [pop](../method/Thread=3a=3aSizedQueue/i/pop.md)
- [shift](../method/Thread=3a=3aSizedQueue/i/shift.md)
- [empty?](../method/Thread=3a=3aSizedQueue/i/empty=3f.md)
- [length](../method/Thread=3a=3aSizedQueue/i/length.md)
- [size](../method/Thread=3a=3aSizedQueue/i/size.md)
- [max](../method/Thread=3a=3aSizedQueue/i/max.md)
- [max=](../method/Thread=3a=3aSizedQueue/i/max=3d.md)
