# Net::HTTP#key=

### def key=(key)

クライアント証明書の秘密鍵を設定します。

[OpenSSL::PKey::RSA](../../../class/OpenSSL=3a=3aPKey=3a=3aRSA.md) オブジェクトか
[OpenSSL::PKey::DSA](../../../class/OpenSSL=3a=3aPKey=3a=3aDSA.md) オブジェクトを設定します。

デフォルトは nil (鍵なし)です。

- **param** `key` -- 設定する秘密鍵
- **SEE** [Net::HTTP#key](../../../method/Net=3a=3aHTTP/i/key.md),
     [OpenSSL::SSL::SSLContext#key=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/key=3d.md)
