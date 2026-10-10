# Gem::ConfigFile#credentials_path

### def credentials_path -> String
{: since="1.9.2"}

API キーを保存する認証情報ファイルのパスを返します。

[Gem.user_home](../../../method/Gem/s/user_home.md) の下の `.gem/credentials` があればそのパスを、無ければ [Gem.data_home](../../../method/Gem/s/data_home.md) の下の `gem/credentials` を返します。

- **SEE** [Gem::ConfigFile#api_keys](../../../method/Gem=3a=3aConfigFile/i/api_keys.md)
