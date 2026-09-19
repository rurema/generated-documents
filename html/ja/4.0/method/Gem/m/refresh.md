# Gem?.refresh

### module_function def refresh -> ()
{: since="1.9.2"}

ディスク上の Gem の一覧をもとに、読み込み済みの Gem の情報を最新の状態に更新します。

内部で `Gem::Specification.reset` を呼び出します。これに伴い、[Gem?.pre_reset](../../../method/Gem/m/pre_reset.md) と [Gem?.post_reset](../../../method/Gem/m/post_reset.md) で登録したフックも実行されます。

- **SEE** [Gem?.pre_reset](../../../method/Gem/m/pre_reset.md), [Gem?.post_reset](../../../method/Gem/m/post_reset.md)
