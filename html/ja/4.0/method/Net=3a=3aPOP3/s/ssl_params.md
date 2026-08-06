# Net::POP3.ssl_params

### def Net::POP3.ssl_params -> Hash|nil

SSL での接続を有効にしている場合には、
SSL の設定のハッシュを返します。

このハッシュは、接続時に生成される
[OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) オブジェクトの
[OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) に渡されます。
このハッシュを変更することで、利用されるパラメータが変更されます。

SSL を有効にしていない場合には nil を返します。
