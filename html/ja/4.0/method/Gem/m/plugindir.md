# Gem?.plugindir

### module_function def plugindir(install_dir = Gem.dir) -> String

RubyGems のプラグインをインストールするディレクトリのパスを返します。

- **param** `install_dir` -- Gem をインストールするディレクトリです。省略した場合は [Gem?.dir](../../../method/Gem/m/dir.md) になります。
- **return** -- `install_dir` の下の `plugins` ディレクトリのパスです。
- **SEE** [Gem?.bindir](../../../method/Gem/m/bindir.md)
