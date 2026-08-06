# DRb::ExtServManager.command

### def DRb::ExtServManager.command -> { String => String|[String] }

サービスを起動するためのコマンドを指定するための [Hash](../../../class/Hash.md) を返します。

Hash のキーがサービス名で、値がそのサービスを起動するためのコマンドです。
この Hash を変更することでサービスを定義します。
[DRb::ExtServManager.command=](../../../method/DRb=3a=3aExtServManager/s/command=3d.md) で Hash 自体を変更することでも同じことができます。

コマンドは文字列、もしくは文字列の配列で指定します。
文字列で指定した場合は [Kernel?.spawn](../../../method/Kernel/m/spawn.md) でプロセスを起動する際に shell 経由で起動されます。
文字列の配列で指定すると shell を経由せずに起動されます。
