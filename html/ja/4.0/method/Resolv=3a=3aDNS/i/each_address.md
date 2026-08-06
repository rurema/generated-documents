# Resolv::DNS#each_address

### def each_address(name) {|name| ...} -> ()

ホスト名 name の IP アドレスをルックアップし、各ルックアップ結果のアドレスに対してブロックを評価します。

- **param** `name` -- ホスト名を文字列もしくは[Resolv::DNS::Name](../../../class/Resolv=3a=3aDNS=3a=3aName.md)のインスタンスで与えます。
