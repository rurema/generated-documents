# Net::HTTP#extra_chain_cert

### def extra_chain_cert -> [OpenSSL::X509::Certificate] | nil
### def extra_chain_cert=(certificates)

証明書チェインに追加する、自分自身を証明する証明書からルート CA までの証明書 (クライアント証明書自体は除く) を取得・設定します。

デフォルトは nil です。

詳しくは [OpenSSL::SSL::SSLContext#extra_chain_cert](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert.md), [OpenSSL::SSL::SSLContext#extra_chain_cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert=3d.md) を見てください。

- **param** `certificates` -- 証明書チェインに追加する [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) の配列
- **SEE** [OpenSSL::SSL::SSLContext#extra_chain_cert](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert.md), [OpenSSL::SSL::SSLContext#extra_chain_cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert=3d.md)
