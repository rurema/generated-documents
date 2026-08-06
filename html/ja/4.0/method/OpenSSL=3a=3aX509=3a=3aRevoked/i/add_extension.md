# OpenSSL::X509::Revoked#add_extension

### def add_extension(ex) -> OpenSSL::X509::Extension

拡張領域に ex を追加します。

追加するデータは [OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) のオブジェクトを渡します。

ex を返します。

- **param** `ex` -- 追加するデータ
- **raise** `OpenSSL::X509::RevokedError` -- 追加に失敗した場合に発生します
