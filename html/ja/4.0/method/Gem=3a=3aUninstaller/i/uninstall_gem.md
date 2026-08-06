# Gem::Uninstaller#uninstall_gem

### def uninstall_gem(spec, specs)

与えられた spec に対応する Gem をアンインストールします。

- **param** `spec` -- アンインストール指定されている Gem の [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を指定します。

- **param** `specs` -- アンインストールする Gem のリストを指定します。
             このパラメータは破壊的に変更されます。
