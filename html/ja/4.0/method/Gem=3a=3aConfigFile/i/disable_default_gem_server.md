# Gem::ConfigFile#disable_default_gem_server

### def disable_default_gem_server -> bool | nil
{: since="2.0.0"}

`gem push` でホストの明示を必須にするかどうかを返します。

真の場合は、`gem push` でホストを明示する必要があります。設定ファイルの `disable_default_gem_server` キーの値で、設定が無い場合は nil を返します。

- **SEE** [Gem::ConfigFile#disable_default_gem_server=](../../../method/Gem=3a=3aConfigFile/i/disable_default_gem_server=3d.md)
