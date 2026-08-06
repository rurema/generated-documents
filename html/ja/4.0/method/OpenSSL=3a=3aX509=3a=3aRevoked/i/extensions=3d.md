# OpenSSL::X509::Revoked#extensions=

### def extensions=(extensions)

拡張領域を extensions で更新します。

extensions には [OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) の配列を渡します。

更新前の拡張領域のデータは破棄されます。

- **param** `extensions` -- 拡張領域のデータ
- **raise** `OpenSSL::X509::RevokedError` -- 更新に失敗した場合に発生します
