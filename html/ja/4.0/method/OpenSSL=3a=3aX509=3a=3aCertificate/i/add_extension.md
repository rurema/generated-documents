# OpenSSL::X509::Certificate#add_extension

### def add_extension(ext) -> OpenSSL::X509::Extension

拡張領域に拡張を追加します。

- **return** -- 追加した拡張を返します
- **param** `ext` -- 追加する拡張([OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) オブジェクト)
- **raise** `OpenSSL::X509::CertificateError` -- 設定に失敗した場合に発生します
