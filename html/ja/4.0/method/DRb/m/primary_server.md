# DRb?.primary_server

### module_function def primary_server -> DRb::DRbServer|nil

ローカルプロセスのプライマリサーバーを返します。

プライマリサーバとは [DRb?.start_service](../../../method/DRb/m/start_service.md) によって起動されるサーバです。

サーバが動いていない場合は nil を返します。

- **SEE** [DRb?.stop_service](../../../method/DRb/m/stop_service.md)
