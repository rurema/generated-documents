# Kernel#xpopen

### def xpopen(command, *mode) -> IO
### def xpopen(command, *mode){ ... } -> object

command を表示してから [IO.popen](../../../method/IO/s/popen.md) の実行します。

- **param** `command` -- コマンド名を指定します。

- **param** `mode` -- オープンする IO ポートのモードを指定します。mode の詳細は [Kernel?.open](../../../method/Kernel/m/open.md) 参照して下さい。

- **SEE** [IO.popen](../../../method/IO/s/popen.md)
