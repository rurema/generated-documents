# Thread::Mutex#lock

### def lock -> self
{: since="1.9.1"}

mutex オブジェクトをロックします。一度に一つのスレッドだけが mutex をロックできます。既にロックされている mutex
に対してロックを行おうとしたスレッドは mutex のロックが解放されるまで、実行が停止されます。

- **raise** `ThreadError` -- self 既にカレントスレッドにロックされている場合に発生します。
                   また、[Signal?.trap](../../../method/Signal/m/trap.md) に指定したハンドラ内で実行した場合に発生します。


- **SEE** [Thread::Mutex#unlock](../../../method/Thread=3a=3aMutex/i/unlock.md)
