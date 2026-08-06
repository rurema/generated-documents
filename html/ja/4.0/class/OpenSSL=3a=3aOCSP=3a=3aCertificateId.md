# class OpenSSL::OCSP::CertificateId < Object

失効状態を問い合わせたい個々の証明書を識別するためのクラスです。

問い合わせたい証明書にissuerの情報+αを付加したオブジェクトです。

CertificateId オブジェクトを複数 [OpenSSL::OCSP::Request](../class/OpenSSL=3a=3aOCSP=3a=3aRequest.md) に含め、同時に問い合わせることができます。

## Class Methods

- [new](../method/OpenSSL=3a=3aOCSP=3a=3aCertificateId/s/new.md)

## Instance Methods

- [cmp](../method/OpenSSL=3a=3aOCSP=3a=3aCertificateId/i/cmp.md)
- [cmp_issuer](../method/OpenSSL=3a=3aOCSP=3a=3aCertificateId/i/cmp_issuer.md)
- [serial](../method/OpenSSL=3a=3aOCSP=3a=3aCertificateId/i/serial.md)
