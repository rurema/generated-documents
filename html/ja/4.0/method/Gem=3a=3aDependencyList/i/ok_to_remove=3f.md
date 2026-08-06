# Gem::DependencyList#ok_to_remove?

### def ok_to_remove?(full_name) -> bool

与えられた名前を持つ [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を自身から削除しても OK な場合は真を返します。
そうでない場合は、偽を返します。

与えられた名前を持つ [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を自身から削除すると、依存関係を壊してしまう場合が、それを削除してはいけない場合です。

- **param** `full_name` -- バージョンを含むフルネームで Gem の名前を指定します。

- **SEE** [Gem::Specification#full_name](../../../method/Gem=3a=3aSpecification/i/full_name.md)
