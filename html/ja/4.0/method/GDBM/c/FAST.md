# GDBM::FAST

### const FAST -> Integer

[GDBM.open](../../../method/GDBM/s/open.md) の第3引数に指定します。

書き込みの結果が、ディスク上のファイルにすぐに反映しなくなります。
このモードのときに結果を明示的にファイルに反映させるには [GDBM#sync](../../../method/GDBM/i/sync.md)
メソッドを呼びます。libgdbm version 1.8.0 以降ではこのモードがデフォルトです。
