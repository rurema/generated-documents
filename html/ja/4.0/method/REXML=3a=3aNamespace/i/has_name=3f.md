# REXML::Namespace#has_name?

### def has_name?(other, ns = nil) -> bool

self が other と ns で指定した名前を持っているならば真を返します。

ns が nil でない場合は名前空間も比較されます。
other が ":" を含んでいる(つまり prefix を含んでいる)場合は
[REXML::Namespace#fully_expanded_name](../../../method/REXML=3a=3aNamespace/i/fully_expanded_name.md) と other を比較します。
どちらでもない場合は other と [REXML::Namespace#name](../../../method/REXML=3a=3aNamespace/i/name.md) を直接比較します。

- **param** `other` -- 比較する名前(文字列)
- **param** `ns` -- 比較する名前空間(文字列)
