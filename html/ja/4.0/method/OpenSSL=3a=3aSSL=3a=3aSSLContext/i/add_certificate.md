# OpenSSL::SSL::SSLContext#add_certificate

### def add_certificate(certificate, pkey, extra_certs = nil) -> self

証明書とその秘密鍵を `self` に追加します。

`certificate` に対応する秘密鍵を `pkey` で指定します。公開鍵の種類(RSA、ECDSA など)が異なる証明書を複数回に分けて追加でき、ハンドシェイク時に OpenSSL がそのときの状況に最も適した証明書を選択します。

[OpenSSL::SSL::SSLContext#cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert=3d.md)、[OpenSSL::SSL::SSLContext#key=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/key=3d.md)、[OpenSSL::SSL::SSLContext#extra_chain_cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert=3d.md) は証明書を設定するための古い方法で、内部的にはこのメソッドを呼び出します。

- **param** `certificate` -- 追加する証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) のインスタンス)
- **param** `pkey` -- `certificate` に対応する秘密鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) のインスタンス)
- **param** `extra_certs` -- `certificate` に続けて送信する証明書チェイン([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) の配列)
- **raise** `ArgumentError` -- `certificate` が公開鍵を含んでいない場合や、`pkey` が `certificate` の公開鍵と一致しない場合に発生します
- **raise** `OpenSSL::SSL::SSLError` -- 証明書や秘密鍵の設定に失敗した場合に発生します

```ruby invalid
ctx.add_certificate(rsa_cert, rsa_pkey, [ca_intermediate_cert])
```

- **SEE** [OpenSSL::SSL::SSLContext#cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert=3d.md), [OpenSSL::SSL::SSLContext#key=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/key=3d.md), [OpenSSL::SSL::SSLContext#extra_chain_cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert=3d.md)
