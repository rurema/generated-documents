# Gem?.paths

### module_function def paths -> Gem::PathSupport
{: since="1.9.3"}
### module_function def paths=(env)
{: since="1.9.3"}

RubyGems がファイルを検索するために使う `Gem::PathSupport` のインスタンスを返します。

`paths=` に `env` を渡すと、それをもとに Gem の検索パスを再設定します。

- **param** `env` -- `GEM_HOME`・`GEM_PATH`・`GEM_SPEC_CACHE` を問い合わせるハッシュ相当のオブジェクトです(通常は `ENV`)。キーは文字列、値は文字列または `nil` を指定します。
- **return** -- RubyGems がファイルを検索するために使う `Gem::PathSupport` のインスタンスです。
