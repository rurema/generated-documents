# Gem?.latest_spec_for

### module_function def latest_spec_for(name) -> Gem::Specification | nil
{: since="1.9.3"}

Gem `name` の、最新のリリースバージョンの [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を返します。

- **param** `name` -- 調べたい Gem の名前です。
- **return** -- Gem `name` の最新のリリースバージョンの [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) です。見つからない場合は `nil` です。
- **SEE** [Gem?.latest_version_for](../../../method/Gem/m/latest_version_for.md)
