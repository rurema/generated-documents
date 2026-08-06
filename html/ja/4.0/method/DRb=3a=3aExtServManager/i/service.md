# DRb::ExtServManager#service

### def service(name) -> DRb::ExtServ

name で指定したサービスに関連付けられた [DRb::ExtServ](../../../class/DRb=3a=3aExtServ.md) 
オブジェクトを返します。

サービスを提供するプロセスが起動していない場合は、[DRb::ExtServManager.command](../../../method/DRb=3a=3aExtServManager/s/command.md) 
で指定したプロセスを起動し、そのプロセスが [DRb::ExtServ](../../../class/DRb=3a=3aExtServ.md) オブジェクトが
[DRb::ExtServ.new](../../../method/DRb=3a=3aExtServ/s/new.md) によって ExtServManager に登録されるのを待ちます。
その後、登録されたオブジェクトを返します。

すでにプロセスが起動していた場合は、登録されている DRb::ExtServ オブジェクトを返します。

[DRb::ExtServ#stop_service](../../../method/DRb=3a=3aExtServ/i/stop_service.md) でサービスを停止すると、登録されている
DRb::ExtServ は削除され、プロセスは停止します。

- **param** `name` -- サービス名文字列
