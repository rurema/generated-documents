# Gem::Dependency#to_spec

### def to_spec -> Gem::Specification
{: since="1.9.3"}

`self` の条件を満たす、インストール済みの [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を 1 つ返します。

[Gem::Dependency#to_specs](../../../method/Gem=3a=3aDependency/i/to_specs.md) が返す候補の中から、既にロードされている(`activated?` な)
ものを優先して返します。`self` が [Gem::Dependency#prerelease?](../../../method/Gem=3a=3aDependency/i/prerelease=3f.md) でなければ、
プレリリース版は他に候補が無いときだけ選ばれます。

- **SEE** [Gem::Dependency#to_specs](../../../method/Gem=3a=3aDependency/i/to_specs.md)
