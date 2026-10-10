# Gem::ConfigFile#api_keys

### def api_keys -> {Symbol => String}
{: since="1.9.3"}

認証情報ファイルに保存されている API キーのハッシュを返します。

キーは rubygems.org の場合は `:rubygems`、それ以外の場合はホスト名のシンボルで、値は API キーです。
認証情報ファイル([Gem::ConfigFile#credentials_path](../../../method/Gem=3a=3aConfigFile/i/credentials_path.md))が無いときは、設定ファイルから読み込んだハッシュをそのまま返します。

- **SEE** [Gem::ConfigFile#credentials_path](../../../method/Gem=3a=3aConfigFile/i/credentials_path.md), [Gem::ConfigFile#set_api_key](../../../method/Gem=3a=3aConfigFile/i/set_api_key.md)
