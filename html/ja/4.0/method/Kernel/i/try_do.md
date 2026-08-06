# Kernel#try_do

### def try_do(src, command, *opts) -> ()
### def try_do(src, command, *opts){ ... } -> ()

- **param** `src` -- C プログラムのソースコードを指定します。

- **param** `command` -- コマンドを指定します。

- **param** `opts` -- オプションを [Hash](../../../class/Hash.md) で指定します。

- **raise** `RuntimeError` -- 開発環境がインストールされていない場合に発生します。

- **SEE** [Kernel#xsystem](../../../method/Kernel/i/xsystem.md)
