# Gem::DependencyInstaller#find_spec_by_name_and_version

### def find_spec_by_name_and_version(gem_name, version = Gem::Requirement.default) -> Array

与えられた Gem の名前とバージョンに関する条件にマッチする [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) とそれの存在する URI を含む配列を返します。

- **param** `gem_name` -- Gem の名前を指定します。

- **param** `version` -- Gem が満たすバージョンに関する条件を指定します。
