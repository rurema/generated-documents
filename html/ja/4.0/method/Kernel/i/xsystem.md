# Kernel#xsystem

### def xsystem(command, opts = nil) -> ()

[Kernel?.system](../../../method/Kernel/m/system.md) と同じですが、コマンドの出力は(標準出力、標準エラー出力ともに)ログファイルに出力します。ログファイル名は mkmf.log です。

- **param** `command` -- コマンドを指定します。
- **param** `opts` -- オプションを [Hash](../../../class/Hash.md) で指定します。
            :werror というキーに真を指定すると

- **SEE** [Kernel?.system](../../../method/Kernel/m/system.md)
