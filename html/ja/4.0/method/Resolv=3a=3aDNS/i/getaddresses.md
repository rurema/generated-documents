# Resolv::DNS#getaddresses

### def getaddresses(name) -> [Resolv::IPv4 | Resolv::IPv6]

ホスト名 name の IP アドレスをルックアップし、ルックアップ結果のアドレスリストを返します。

ルックアップに失敗した場合は空の配列が返されます。

- **param** `name` -- ホスト名を文字列もしくは[Resolv::DNS::Name](../../../class/Resolv=3a=3aDNS=3a=3aName.md)のインスタンスで与えます。
