# GDBM::NOLOCK

### const NOLOCK -> Integer

[GDBM.open](../../../method/GDBM/s/open.md) の第3引数に指定します。

通常、他のプロセスが DB をオープンしている最中にオープンを行うと
[Errno::EWOULDBLOCK](../../../class/Errno=3a=3aEWOULDBLOCK.md)(または [Errno::EAGAIN](../../../class/Errno=3a=3aEAGAIN.md)) 例外が発生します。
このフラグを指定していれば、他のプロセスがオープンしている最中でも同時オープンできます。

この定数は libgdbm version 1.8.0 以降より有効です。
