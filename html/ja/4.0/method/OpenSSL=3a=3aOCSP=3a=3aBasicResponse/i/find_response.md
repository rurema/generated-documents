# OpenSSL::OCSP::BasicResponse#find_response

### def find_response(certificate_id) -> OpenSSL::OCSP::SingleResponse | nil

certificate_id に CertId が一致する `OpenSSL::OCSP::SingleResponse` を返します。

一致するものが無い場合は nil を返します。

- **param** `certificate_id` -- 検索対象の [OpenSSL::OCSP::CertificateId](../../../class/OpenSSL=3a=3aOCSP=3a=3aCertificateId.md) オブジェクト
- **SEE** [OpenSSL::OCSP::BasicResponse#responses](../../../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/i/responses.md)
