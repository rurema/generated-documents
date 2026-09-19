# Gem::Specification.find_inactive_by_path

### def Gem::Specification.find_inactive_by_path(path) -> Gem::Specification | nil
{: since="2.0.0"}

指定した `path` にマッチするファイルを含む仕様書のうち、まだ activate されて
いないものの中からもっとも合致するものを返します。

見つからなかった場合は nil を返します。

- **param** `path` -- 探すファイルのパスを指定します。

- **SEE** [Gem::Specification.find_by_path](../../../method/Gem=3a=3aSpecification/s/find_by_path.md), [Gem::Specification#activated?](../../../method/Gem=3a=3aSpecification/i/activated=3f.md)
