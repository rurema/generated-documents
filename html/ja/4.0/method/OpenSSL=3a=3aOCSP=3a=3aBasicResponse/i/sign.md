# OpenSSL::OCSP::BasicResponse#sign

### def sign(signer_cert, signer_key, certs = [], flags=0) -> self

Response に署名します。

OCSP レスポンダ(もしくは CA)はレスポンスに署名をすることで、レスポンスの内容を保証します。

flags には以下の値の OR を渡すことができます。
  - [OpenSSL::OCSP::NOTIME](../../../method/OpenSSL=3a=3aOCSP/c/NOTIME.md)
  - [OpenSSL::OCSP::RESPID_KEY](../../../method/OpenSSL=3a=3aOCSP/c/RESPID_KEY.md)
  - [OpenSSL::OCSP::NOCERTS](../../../method/OpenSSL=3a=3aOCSP/c/NOCERTS.md)

certs に証明書の配列を渡すことで、この署名を検証するために必要となる別の証明書を付加できます。

- **param** `signer_cert` -- 署名者の証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト)
- **param** `signer_key` -- 証明に用いる秘密鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト)
- **param** `certs` -- 添付する証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトの配列)
- **param** `flags` -- フラグ(整数)
