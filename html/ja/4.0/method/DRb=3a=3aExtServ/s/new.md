# DRb::ExtServ.new

### def DRb::ExtServ.new(there, name, server=nil) -> DRb::ExtServ

DRb::ExtServ オブジェクトを生成し、サービスを
[DRb::ExtServManager](../../../class/DRb=3a=3aExtServManager.md) オブジェクトに登録します。

there で指定した
URI の front オブジェクト(これは [DRb::ExtServManager](../../../class/DRb=3a=3aExtServManager.md) のインスタンスであるべきです)に name という名前でサービスを登録します。

there, name は [Object::ARGV](../../../method/Object/c/ARGV.md) の末尾2つを渡してください。

server には drb の通信に用いる [DRb::DRbServer](../../../class/DRb=3a=3aDRbServer.md) オブジェクトを指定します。
省略した場合は [DRb?.primary_server](../../../method/DRb/m/primary_server.md) を用います。
[DRb::ExtServ#front](../../../method/DRb=3a=3aExtServ/i/front.md) が返すオブジェクトはこのサーバの
[DRb::DRbServer#front](../../../method/DRb=3a=3aDRbServer/i/front.md) が用いられます。

- **param** `there` -- サービスを管理しているプロセスの drb URI
- **param** `name` -- サービスの名前
- **param** `server` -- DRb::DRbServer オブジェクト
