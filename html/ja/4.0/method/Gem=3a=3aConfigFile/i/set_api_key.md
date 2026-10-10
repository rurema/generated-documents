# Gem::ConfigFile#set_api_key

### def set_api_key(host, api_key) -> ()
{: since="2.4.0"}

`host` の API キーを認証情報ファイルに書き込みます。

認証情報ファイルは、パーミッション 0600 で作られます。

- **param** `host` -- ホスト名をシンボルまたは文字列で指定します。

- **param** `api_key` -- API キーを文字列で指定します。

- **SEE** [Gem::ConfigFile#api_keys](../../../method/Gem=3a=3aConfigFile/i/api_keys.md), [Gem::ConfigFile#credentials_path](../../../method/Gem=3a=3aConfigFile/i/credentials_path.md)
