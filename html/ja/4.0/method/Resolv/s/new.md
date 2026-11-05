# Resolv.new

### def Resolv.new(resolvers = nil, use_ipv6: nil) -> Resolv

resolvers に与えたリゾルバの配列を先頭から順に名前解決を試すような、新しいリゾルバオブジェクトを返します。

resolvers の各要素は each_address と each_name というメソッドを持っていなければなりません。

`resolvers` が nil もしくは [Hash](../../../class/Hash.md) の場合は、[Resolv::Hosts](../../../class/Resolv=3a=3aHosts.md) と [Resolv::DNS](../../../class/Resolv=3a=3aDNS.md) のリゾルバをこの順に使います。
[Hash](../../../class/Hash.md) の場合は、システムの既定の DNS の設定にその内容をマージしたものを DNS のリゾルバの設定に使います(指定できるキーは [Resolv::DNS.new](../../../method/Resolv=3a=3aDNS/s/new.md) を参照してください)。

`use_ipv6` の値は無視されます。
DNS のリゾルバで IPv6 のアドレス(AAAA レコード)も引くかどうかは、`resolvers` に `{use_ipv6: false}` のような [Hash](../../../class/Hash.md) を渡して指定します。
`:use_ipv6` が true なら A レコードと AAAA レコードを、false なら A レコードだけを引きます。
指定しないか nil の場合は、ループバックアドレスとリンクローカルアドレス以外の IPv6 のアドレスがこのホストにあるときだけ AAAA レコードも引きます。
`resolvers` と `use_ipv6` を両方指定すると、非推奨である旨の警告が出ます。

- **param** `resolvers` -- リゾルバの配列もしくは DNS のリゾルバの設定の [Hash](../../../class/Hash.md)
- **param** `use_ipv6` -- 無視されます
