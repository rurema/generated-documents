# Gem::SourceInfoCache#search

### def search(pattern, platform_only = false, all = false) -> [Gem::Specification]

与えられた条件を満たす [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) のリストを返します。

- **param** `pattern` -- 検索したい Gem を表す [Gem::Dependency](../../../class/Gem=3a=3aDependency.md) のインスタンスを指定します。

- **param** `platform_only` -- 真を指定するとプラットフォームが一致するもののみを返します。デフォルトは偽です。

- **param** `all` -- 真を指定するとキャッシュを更新してから検索を実行します。

- **SEE** [Gem::SourceIndex#search](../../../method/Gem=3a=3aSourceIndex/i/search.md)
