# class OpenSSL::X509::CRL < Object

CRL(証明書失効リスト) クラス。

CRL とは、危殆化した等なんらかの理由で失効した証明書のリストです。
通常 CA によって発行されるものです。
[OpenSSL::X509::Store](../class/OpenSSL=3a=3aX509=3a=3aStore.md) に組込むことで失効した証明書の検証を失敗させることができます。

通常 CRL の信頼性を確認するためには CRL になされた署名を検証する必要があります。

  - [RFC:5280]

## Class Methods

- [new](../method/OpenSSL=3a=3aX509=3a=3aCRL/s/new.md)

## Instance Methods

- [add_extension](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/add_extension.md)
- [add_revoked](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/add_revoked.md)
- [extensions](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/extensions.md)
- [extensions=](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/extensions=3d.md)
- [issuer](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/issuer.md)
- [issuer=](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/issuer=3d.md)
- [last_update](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/last_update.md)
- [last_update=](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/last_update=3d.md)
- [next_update](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/next_update.md)
- [next_update=](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/next_update=3d.md)
- [revoked](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/revoked.md)
- [revoked=](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/revoked=3d.md)
- [sign](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/sign.md)
- [signature_algorithm](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/signature_algorithm.md)
- [to_der](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/to_der.md)
- [to_pem](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/to_pem.md)
- [to_s](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/to_s.md)
- [to_text](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/to_text.md)
- [verify](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/verify.md)
- [version](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/version.md)
- [version=](../method/OpenSSL=3a=3aX509=3a=3aCRL/i/version=3d.md)
