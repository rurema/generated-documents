# Resolv::DNS#getaddress

### def getaddress(name) -> Resolv::IPv4 | Resolv::IPv6

ホスト名 name の IP アドレスをルックアップし、ルックアップ結果の最初のアドレスを返します。

- **param** `name` -- ホスト名を文字列もしくは[Resolv::DNS::Name](../../../class/Resolv=3a=3aDNS=3a=3aName.md)のインスタンスで与えます。
- **raise** `Resolv::ResolvError` -- ルックアップに失敗したときに発生します。
