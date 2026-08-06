# OpenSSL::X509::Store#add_cert

### def add_cert(cert) -> self

CA 証明書を信頼する証明書として証明書ストアに加えます。

- **param** `cert` -- 追加する CA 証明書の [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト
- **raise** `OpenSSL::X509::StoreError` -- 追加に失敗した場合に発生します
