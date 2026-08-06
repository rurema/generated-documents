# OpenSSL::X509::CRL#revoked=

### def revoked=(revs)

失効証明書リストを更新します。

このメソッドを呼びだす前のリストは破棄されます。
revs には失効した証明書を [OpenSSL::X509::Revoked](../../../class/OpenSSL=3a=3aX509=3a=3aRevoked.md) の配列で渡します。

- **param** `revs` -- 設定する失効した証明書の配列
- **raise** `OpenSSL::X509::CRLError` -- 設定に失敗した場合に発生します
