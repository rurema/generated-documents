# Gem?.configuration=

### module_function def configuration -> Gem::ConfigFile
{: since="1.9.2"}
### module_function def configuration=(config)
{: since="1.9.2"}

Gem の標準の設定オブジェクトを返します。

`configuration=` で明示的に設定していない場合は、[Gem::ConfigFile](../../../class/Gem=3a=3aConfigFile.md) の新しいインスタンスを生成して使用します。

- **param** `config` -- 標準の設定オブジェクトとして使うオブジェクトを指定します。[Gem::ConfigFile](../../../class/Gem=3a=3aConfigFile.md) と同じプロトコルを実装している必要があります。
- **return** -- 標準の設定オブジェクトです。
- **SEE** [Gem::ConfigFile](../../../class/Gem=3a=3aConfigFile.md)
