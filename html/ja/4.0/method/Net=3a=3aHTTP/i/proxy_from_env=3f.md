# Net::HTTP#proxy_from_env?

### def proxy_from_env? -> bool

プロクシ情報を環境変数から得る場合に true を返します。

基本的に [Net::HTTP.new](../../../method/Net=3a=3aHTTP/s/new.md) や [Net::HTTP.start](../../../method/Net=3a=3aHTTP/s/start.md) の proxy_address
引数に :ENV を渡した場合に true になります。

環境変数 http_proxy が定義されていなくともこの値は true を返します。
その場合にはプロクシは利用されず直接サーバに接続します。

- **SEE** [Net::HTTP#proxy_from_env=](../../../method/Net=3a=3aHTTP/i/proxy_from_env=3d.md)
