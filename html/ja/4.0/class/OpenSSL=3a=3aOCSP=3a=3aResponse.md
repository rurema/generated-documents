# class OpenSSL::OCSP::Response < Object

OCSP レスポンダからのレスポンスを表わすオブジェクトです。

レスポンスの実質的な内容(証明書が失効しているか否か)
は [OpenSSL::OCSP::Response#basic](../method/OpenSSL=3a=3aOCSP=3a=3aResponse/i/basic.md) 
で得られる [OpenSSL::OCSP::BasicResponse](../class/OpenSSL=3a=3aOCSP=3a=3aBasicResponse.md) オブジェクトが保持しています。このオブジェクト自体はレスポンスのステータスコードなどを保持しています。

## Class Methods

- [create](../method/OpenSSL=3a=3aOCSP=3a=3aResponse/s/create.md)
- [new](../method/OpenSSL=3a=3aOCSP=3a=3aResponse/s/new.md)

## Instance Methods

- [basic](../method/OpenSSL=3a=3aOCSP=3a=3aResponse/i/basic.md)
- [status](../method/OpenSSL=3a=3aOCSP=3a=3aResponse/i/status.md)
- [status_string](../method/OpenSSL=3a=3aOCSP=3a=3aResponse/i/status_string.md)
- [to_der](../method/OpenSSL=3a=3aOCSP=3a=3aResponse/i/to_der.md)
