# Gem::DependencyInstaller#find_gems_with_sources

### def find_gems_with_sources(dep) -> Array

与えられた条件にマッチする [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) のインスタンスと URI のペアのリストを返します。

Gem はローカル (Dir.pwd) とリモート (Gem.sources) の両方から検索します。
結果は、バージョンの新しい順が先にきます。また、ローカルの Gem も先にきます。

- **param** `dep` -- [Gem::Dependency](../../../class/Gem=3a=3aDependency.md) のインスタンスを指定します。
