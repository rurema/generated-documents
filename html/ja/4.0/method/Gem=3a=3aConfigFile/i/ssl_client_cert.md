# Gem::ConfigFile#ssl_client_cert

### def ssl_client_cert -> String | nil
{: since="2.1.0"}

クライアント認証付きの HTTPS 接続に使うクライアント証明書のファイルまたはディレクトリのパスを返します。

設定ファイルの `ssl_client_cert` キーの値で、設定が無い場合は nil を返します。
