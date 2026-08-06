# OpenSSL::X509::ExtensionFactory#create_ext

### def create_ext(oid, value, critical = false)  -> OpenSSL::X509::Extension

[OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) のインスタンスを生成して返します。

- **param** `oid` -- 拡張領域の識別子を表す文字列
- **param** `value` -- 拡張領域の値を表す文字列
- **param** `critical` -- 重要度(真偽値)
