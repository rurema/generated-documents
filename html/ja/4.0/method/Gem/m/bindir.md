# Gem?.bindir

### module_function def bindir(install_dir = Gem.dir) -> String
{: since="1.9.2"}

Gem の実行可能ファイルをインストールするディレクトリのパスを返します。

`install_dir` にデフォルトのインストール先([Gem?.dir](../../../method/Gem/m/dir.md))を指定した場合は [Gem.default_bindir](../../../method/Gem/s/default_bindir.md) を返します。それ以外の場合は `install_dir` の下の `bin` ディレクトリを返します。

- **param** `install_dir` -- Gem をインストールするディレクトリです。省略した場合は [Gem?.dir](../../../method/Gem/m/dir.md) になります。
- **return** -- 実行可能ファイルをインストールするディレクトリのパスです。
- **SEE** [Gem?.plugindir](../../../method/Gem/m/plugindir.md)
