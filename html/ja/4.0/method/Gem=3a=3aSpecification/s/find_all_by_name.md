# Gem::Specification.find_all_by_name

### def Gem::Specification.find_all_by_name(name, *requirements) -> [Gem::Specification]
{: since="1.9.3"}

指定した `name` と `requirements` にマッチする全ての仕様書を返します。

- **param** `name` -- 探す gem の名前を指定します。
- **param** `requirements` -- バージョンの必要条件を 0 個以上指定します。省略した場合は
           全てのバージョンにマッチします。

- **SEE** [Gem::Specification.find_by_name](../../../method/Gem=3a=3aSpecification/s/find_by_name.md)
