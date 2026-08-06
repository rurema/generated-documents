# Gem::DependencyList#find_name

### def find_name(full_name) -> Gem::Specification | nil

自身に含まれる与えられた名前を持つ [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) のインスタンスを返します。

見つからなかった場合は nil を返します。

- **param** `full_name` -- バージョンを含むフルネームで Gem の名前を指定します。

- **SEE** [Gem::Specification#full_name](../../../method/Gem=3a=3aSpecification/i/full_name.md)
