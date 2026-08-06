# class OpenSSL::OCSP::Request < Object

OCSP リクエストを表すクラスです。

問合せたい証明書を [OpenSSL::OCSP::CertificateId](../class/OpenSSL=3a=3aOCSP=3a=3aCertificateId.md) オブジェクトの形で複数持つことができます。

## Class Methods

- [new](../method/OpenSSL=3a=3aOCSP=3a=3aRequest/s/new.md)

## Instance Methods

- [add_certid](../method/OpenSSL=3a=3aOCSP=3a=3aRequest/i/add_certid.md)
- [add_nonce](../method/OpenSSL=3a=3aOCSP=3a=3aRequest/i/add_nonce.md)
- [certid](../method/OpenSSL=3a=3aOCSP=3a=3aRequest/i/certid.md)
- [check_nonce](../method/OpenSSL=3a=3aOCSP=3a=3aRequest/i/check_nonce.md)
- [sign](../method/OpenSSL=3a=3aOCSP=3a=3aRequest/i/sign.md)
- [to_der](../method/OpenSSL=3a=3aOCSP=3a=3aRequest/i/to_der.md)
- [verify](../method/OpenSSL=3a=3aOCSP=3a=3aRequest/i/verify.md)
