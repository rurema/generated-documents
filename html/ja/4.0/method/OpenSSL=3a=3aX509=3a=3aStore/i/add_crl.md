# OpenSSL::X509::Store#add_crl

### def add_crl(crl) -> self

信頼する CRL(証明書失効リスト)
を証明書ストアに加えます。

- **param** `crl` -- 追加する CRL の [OpenSSL::X509::CRL](../../../class/OpenSSL=3a=3aX509=3a=3aCRL.md) オブジェクト
- **raise** `OpenSSL::X509::StoreError` -- 追加に失敗した場合に発生します
