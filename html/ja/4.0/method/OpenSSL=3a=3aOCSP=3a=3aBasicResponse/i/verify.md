# OpenSSL::OCSP::BasicResponse#verify

### def verify(certs, store, flags=0) -> bool

署名を検証します。

flagsには以下の値の OR を取ったものを渡します。
  - [OpenSSL::OCSP::TRUSTOTHER](../../../method/OpenSSL=3a=3aOCSP/c/TRUSTOTHER.md)
  - [OpenSSL::OCSP::NOSIGS](../../../method/OpenSSL=3a=3aOCSP/c/NOSIGS.md)
  - [OpenSSL::OCSP::NOVERIFY](../../../method/OpenSSL=3a=3aOCSP/c/NOVERIFY.md)
  - [OpenSSL::OCSP::NOINTERN](../../../method/OpenSSL=3a=3aOCSP/c/NOINTERN.md)

TRUSTOTHER を有効にすると certs で指定した証明書を検証せずに信頼します。

- **param** `certs` -- 検証に用いる追加的な証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトの配列)
- **param** `store` -- 検証に用いる証明書ストア([OpenSSL::X509::Store](../../../class/OpenSSL=3a=3aX509=3a=3aStore.md) オブジェクト)
- **param** `flags` -- フラグ(整数)
