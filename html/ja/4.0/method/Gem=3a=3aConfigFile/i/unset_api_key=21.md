# Gem::ConfigFile#unset_api_key!

### def unset_api_key! -> Integer | false
{: since="2.5.0"}

認証情報ファイルを削除して、すべての API キーを消します。

- **return** -- 認証情報ファイルが無ければ偽を返します。あれば削除して、削除したファイルの数(1)を返します。

- **SEE** [Gem::ConfigFile#credentials_path](../../../method/Gem=3a=3aConfigFile/i/credentials_path.md)
