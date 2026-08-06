# Gem::DependencyList#remove_by_name

### def remove_by_name(full_name) -> Gem::Specification

与えられた名前を持つ [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を自身から削除します。

このメソッドでは削除後の依存関係をチェックしません。

- **param** `full_name` -- バージョンを含むフルネームで Gem の名前を指定します。

- **SEE** [Gem::Specification#full_name](../../../method/Gem=3a=3aSpecification/i/full_name.md), [Array#delete_if](../../../method/Array/i/delete_if.md)
