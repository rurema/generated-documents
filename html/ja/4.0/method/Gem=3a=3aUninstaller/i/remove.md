# Gem::Uninstaller#remove

### def remove(spec, list)

指定された Gem を削除します。

- **param** `spec` -- アンインストール指定されている Gem の [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を指定します。

- **param** `list` -- アンインストールする Gem のリストを指定します。
            このパラメータは破壊的に変更されます。

- **raise** `Gem::DependencyRemovalException` -- アンインストール指定された Gem を削除すると依存関係が壊れる場合に発生します。

- **raise** `Gem::GemNotInHomeException` -- アンインストール指定された Gem が所定のディレクトリにそんないしない場合に発生します。
