# Thread::Queue#enq

### def push(value) -> ()
### def <<(value)   -> ()
### def enq(value)  -> ()

キューの値を追加します。待っているスレッドがいれば実行を再開させます。返り値は不定です。

使用例は [Thread::Queue#example](../../../class/Thread=3a=3aQueue.md#example) を参照してください。
