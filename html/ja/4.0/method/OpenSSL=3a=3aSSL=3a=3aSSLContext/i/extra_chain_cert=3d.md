# OpenSSL::SSL::SSLContext#extra_chain_cert=

### def extra_chain_cert=(certificates)

自分自身を証明する証明書からルート CA までの証明書のリストを配列で設定します。

[OpenSSL::SSL::SSLContext#cert](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert.md) で設定した証明書から相手が持っていると期待されるルート CA 証明書までのリストを渡します。

これによって接続相手はチェインを辿ることでその相手が信頼していない証明書の信頼性を順に確認し、自分自身を証明する証明書の信頼性を確認します。

- **param** `certificates` -- 設定する証明書チェイン([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) の
       配列)
- **SEE** [OpenSSL::SSL::SSLContext#extra_chain_cert](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert.md)
