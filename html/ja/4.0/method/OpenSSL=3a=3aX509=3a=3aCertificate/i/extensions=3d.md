# OpenSSL::X509::Certificate#extensions=

### def extensions=(extensions)

証明書の拡張領域の内容を設定します。

- **param** `extensions` -- 設定する拡張([OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) オブジェクト)の配列
- **raise** `OpenSSL::X509::CertificateError` -- 設定に失敗した場合に発生します
