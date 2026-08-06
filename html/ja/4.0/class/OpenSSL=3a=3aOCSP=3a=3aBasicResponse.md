# class OpenSSL::OCSP::BasicResponse < Object

OCSP の Basic OCSP Response を表すクラスです。

レスポンスの実質的な内容(証明書が失効しているかどうか)
はこのクラスのオブジェクトが保持します。

OCSP レスポンダからのレスポンス自体は
[OpenSSL::OCSP::Response](../class/OpenSSL=3a=3aOCSP=3a=3aResponse.md) のオブジェクトが表現していて、このオブジェクトの [OpenSSL::OCSP::Response#basic](../method/OpenSSL=3a=3aOCSP=3a=3aResponse/i/basic.md) によって
BasicResponse のオブジェクトを得ます。

## Class Methods

- [new](../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/s/new.md)

## Instance Methods

- [add_nonce](../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/i/add_nonce.md)
- [add_status](../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/i/add_status.md)
- [copy_nonce](../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/i/copy_nonce.md)
- [sign](../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/i/sign.md)
- [status](../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/i/status.md)
- [verify](../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/i/verify.md)
