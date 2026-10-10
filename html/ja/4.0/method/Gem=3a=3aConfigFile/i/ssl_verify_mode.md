# Gem::ConfigFile#ssl_verify_mode

### def ssl_verify_mode -> Integer | nil
{: since="2.0.0"}

HTTPS 接続で使う OpenSSL の検証モードを返します。

設定ファイルの `ssl_verify_mode` キーの値(`OpenSSL::SSL::VERIFY_PEER` などの整数)で、設定が無い場合は nil を返します。
