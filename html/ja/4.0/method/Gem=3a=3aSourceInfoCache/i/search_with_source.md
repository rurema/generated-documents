# Gem::SourceInfoCache#search_with_source

### def search_with_source(pattern, only_platform = false, all = false) -> Array

与えられた条件を満たす [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) と URL のリストを返します。

- **param** `pattern` -- 検索したい Gem を表す [Gem::Dependency](../../../class/Gem=3a=3aDependency.md) のインスタンスを指定します。

- **param** `only_platform` -- 真を指定するとプラットフォームが一致するもののみを返します。デフォルトは偽です。

- **param** `all` -- 真を指定するとキャッシュを更新してから検索を実行します。

- **return** -- 第一要素を [Gem::Specification](../../../class/Gem=3a=3aSpecification.md)、第二要素を取得元の URL とする配列を要素とする配列を返します。
