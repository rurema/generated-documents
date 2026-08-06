# DRb::ExtServ#stop_service

### def stop_service -> true

サービスを停止します。

[DRb::ExtServManager](../../../class/DRb=3a=3aExtServManager.md) オブジェクトにサービスの停止を伝達し、
[DRb::DRbServer#stop_service](../../../method/DRb=3a=3aDRbServer/i/stop_service.md) でサーバを停止します。

このメソッドはリモートから起動できます。
サーバが停止するため、停止したサービスのリモートオブジェクトは利用できなくなります。また、サーバの停止により接続を待ち受けているスレッドが停止します。

サービス停止後、
[DRb::ExtServManager#service](../../../method/DRb=3a=3aExtServManager/i/service.md) で同じ名前のサービスを要求すると、別のプロセスが起動します。
