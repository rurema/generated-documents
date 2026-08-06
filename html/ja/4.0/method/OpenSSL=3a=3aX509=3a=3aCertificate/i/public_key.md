# OpenSSL::X509::Certificate#public_key

### def public_key -> OpenSSL::PKey::PKey

証明書に記載された公開鍵を返します。

鍵の種類によって以下のいずれかのクラスのインスタンスを返します。
  - [OpenSSL::PKey::RSA](../../../class/OpenSSL=3a=3aPKey=3a=3aRSA.md)
  - [OpenSSL::PKey::DSA](../../../class/OpenSSL=3a=3aPKey=3a=3aDSA.md)
  - [OpenSSL::PKey::DH](../../../class/OpenSSL=3a=3aPKey=3a=3aDH.md)
  - [OpenSSL::PKey::EC](../../../class/OpenSSL=3a=3aPKey=3a=3aEC.md)

- **raise** `OpenSSL::X509::CertificateError` -- 鍵の取得に失敗した場合に発生します
- **raise** `OpenSSL::PKey::PKeyError` -- サポートしていない種類の鍵である場合に発生します
