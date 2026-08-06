# Gem::SourceIndex#search

### def search(gem_pattern, platform_only = false) -> [Gem::Specification]

引数で指定された条件を満たす Gem のリストを返します。

- **param** `gem_pattern` -- 検索したい Gem を表す [Gem::Dependency](../../../class/Gem=3a=3aDependency.md) のインスタンスを指定します。

- **param** `platform_only` -- 真を指定するとプラットフォームが一致するもののみを返します。デフォルトは偽です。
