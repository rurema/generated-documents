# OpenSSL::X509::CRL#add_revoked

### def add_revoked(rev) -> OpenSSL::X509::Revoked

失効証明書リストに新たな要素を加えます。

rev は失効した証明書を表す [OpenSSL::X509::Revoked](../../../class/OpenSSL=3a=3aX509=3a=3aRevoked.md) オブジェクトです。

返り値は rev です。

- **param** `rev` -- 追加する失効した証明書を表すオブジェクト
- **raise** `OpenSSL::X509::CRLError` -- 追加に失敗した場合に発生します
