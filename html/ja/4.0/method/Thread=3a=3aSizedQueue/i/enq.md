# Thread::SizedQueue#enq

### def push(obj, non_block = false) -> ()
### def enq(obj, non_block = false)  -> ()
### def <<(obj)                      -> ()

キューに与えられたオブジェクトを追加します。

キューのサイズが [Thread::SizedQueue#max](../../../method/Thread=3a=3aSizedQueue/i/max.md) に達している場合は、
non_block が真でなければ、キューのサイズが [Thread::SizedQueue#max](../../../method/Thread=3a=3aSizedQueue/i/max.md)
より小さくなるまで他のスレッドに実行を譲ります。
その後、キューに与えられたオブジェクトを追加します。

- **param** `obj` -- キューに追加したいオブジェクトを指定します。
- **param** `non_block` -- true を与えると、キューが一杯の時に例外 [ThreadError](../../../class/ThreadError.md) が発生します。

使用例は [Thread::SizedQueue#example](../../../class/Thread=3a=3aSizedQueue.md#example) を参照してください。

- **SEE** [Thread::Queue#push](../../../method/Thread=3a=3aQueue/i/push.md)
