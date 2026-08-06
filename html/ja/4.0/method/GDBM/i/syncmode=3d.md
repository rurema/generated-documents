# GDBM#syncmode=

### def syncmode=(bool)

オープンしている GDBM オブジェクトのモードを変更します。

このオプションはデフォルトで off です。

このオプションが on のときは、GDBM はデータベースの変更操作ごとにデータベースの状態を同期します。

- **param** `bool` -- 新たにセットするモード。

- **SEE** [GDBM::SYNC](../../../method/GDBM/c/SYNC.md), [GDBM#fastmode=](../../../method/GDBM/i/fastmode=3d.md)
