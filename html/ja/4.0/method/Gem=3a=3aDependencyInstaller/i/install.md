# Gem::DependencyInstaller#install

### def install(dep_or_name, version = Gem::Requirement.default) -> Array

指定された Gem とその依存する Gem を全てインストールします。

- **param** `dep_or_name` -- Gem の名前か [Gem::Dependency](../../../class/Gem=3a=3aDependency.md) のインスタンスを指定します。

- **param** `version` -- バージョンに関する条件を指定します。

- **return** -- このメソッドでインストールした Gem のリストを返します。
