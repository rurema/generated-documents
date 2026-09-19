# Gem::Specification.find_by_path

### def Gem::Specification.find_by_path(path) -> Gem::Specification | nil
{: since="1.9.3"}

指定した `path` にマッチするファイルを含む、もっとも合致する仕様書を返します。

見つからなかった場合は nil を返します。

- **param** `path` -- 探すファイルのパスを指定します。

- **SEE** [Gem::Specification.find_inactive_by_path](../../../method/Gem=3a=3aSpecification/s/find_inactive_by_path.md)
