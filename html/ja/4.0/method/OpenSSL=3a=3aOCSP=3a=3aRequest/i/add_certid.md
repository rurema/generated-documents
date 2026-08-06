# OpenSSL::OCSP::Request#add_certid

### def add_certid(cid) -> self

Request オブジェクトに問い合わせ対象の証明書情報を追加します。

証明書情報は [OpenSSL::OCSP::CertificateId](../../../class/OpenSSL=3a=3aOCSP=3a=3aCertificateId.md) の形で渡す必要があります。

- **param** `cid` -- 問い合わせ対象の証明書情報([OpenSSL::OCSP::CertificateId](../../../class/OpenSSL=3a=3aOCSP=3a=3aCertificateId.md) オブジェクト)
- **raise** `OpenSSL::OCSP::OCSPError` -- 追加に失敗した場合に発生します。
- **SEE** [OpenSSL::OCSP::Request#certid](../../../method/OpenSSL=3a=3aOCSP=3a=3aRequest/i/certid.md)
