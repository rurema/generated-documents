# WeakRef#__getobj__

### def __getobj__ -> object

自身の参照先のオブジェクトを返します。

- **raise** `WeakRef::RefError` -- GC 済みのオブジェクトを参照した場合に発生します。

- **SEE** [delegate](../../../library/delegate.md)
