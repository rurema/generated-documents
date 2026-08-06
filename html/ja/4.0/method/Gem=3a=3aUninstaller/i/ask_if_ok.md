# Gem::Uninstaller#ask_if_ok

### def ask_if_ok(spec) -> bool

アンインストール指定された Gem を削除すると依存関係を満たせなくなる場合に呼び出されます。

- **param** `spec` -- アンインストール指定されている Gem の [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を指定します。
