# Gem?.sources=

### module_function def sources -> Gem::SourceList
{: since="1.9.2"}
### module_function def sources=(new_sources)
{: since="1.9.2"}

リモートから Gem を取得する際のソースの一覧を返します。

`sources=` で明示的に設定していない場合は、設定ファイルに指定されたソース、それも無ければ [Gem.default_sources](../../../method/Gem/s/default_sources.md) を使います。`sources=` に偽を渡すと設定がリセットされ、次に [Gem?.sources](../../../method/Gem/m/sources.md) を呼んだときに再計算されます。

- **param** `new_sources` -- 設定するソースの一覧です。偽を渡すとリセットされます。
- **return** -- リモートから Gem を取得する際のソースの一覧です。
- **SEE** [Gem::ConfigFile](../../../class/Gem=3a=3aConfigFile.md), [Gem.default_sources](../../../method/Gem/s/default_sources.md)
