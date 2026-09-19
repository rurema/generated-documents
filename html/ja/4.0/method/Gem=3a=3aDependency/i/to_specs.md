# Gem::Dependency#to_specs

### def to_specs -> [Gem::Specification]
{: since="1.9.3"}

`self` の条件を満たす、インストール済みの [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を配列で返します。

- **raise** `Gem::MissingSpecError` -- 条件を満たすスペックが見つからず、
           同名のスペックも全く無い場合に発生します。
- **raise** `Gem::MissingSpecVersionError` -- 同名のスペックは存在するものの、
           条件を満たすバージョンのものが無い場合に発生します。

- **SEE** [Gem::Dependency#to_spec](../../../method/Gem=3a=3aDependency/i/to_spec.md), [Gem::Dependency#matching_specs](../../../method/Gem=3a=3aDependency/i/matching_specs.md)
