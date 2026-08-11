# Thread::ConditionVariable#wait

### def wait(mutex, timeout = nil) -> self

mutex のロックを解放し、カレントスレッドを停止します。
[Thread::ConditionVariable#signal](../../../method/Thread=3a=3aConditionVariable/i/signal.md)または、
[Thread::ConditionVariable#broadcast](../../../method/Thread=3a=3aConditionVariable/i/broadcast.md)で送られたシグナルを受け取ると、mutexのロックを取得し、実行状態となります。

- **param** `mutex` -- [Thread::Mutex](../../../class/Thread=3a=3aMutex.md) オブジェクトを指定します。

- **param** `timeout` -- スリープする秒数を指定します。この場合はシグナルを受け取らなかった場合でも指定した秒数が経過するとスリープを終了します。省略するとスリープし続けます。

- **SEE** [Thread::ConditionVariable#signal](../../../method/Thread=3a=3aConditionVariable/i/signal.md), [Thread::ConditionVariable#broadcast](../../../method/Thread=3a=3aConditionVariable/i/broadcast.md)
