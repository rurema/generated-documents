# GDBM#fastmode=

### def fastmode=(bool)

オープンしている GDBM オブジェクトのモードを変更します。

このオプションはデフォルトで on です。
このオプションは obsolete です。

このオプションが on のときは、GDBM はディスクへの書き込みを待たずに次の操作を続けます。

- **param** `bool` -- 新たにセットするモード。

- **SEE** [GDBM::FAST](../../../method/GDBM/c/FAST.md), [GDBM#syncmode=](../../../method/GDBM/i/syncmode=3d.md)
