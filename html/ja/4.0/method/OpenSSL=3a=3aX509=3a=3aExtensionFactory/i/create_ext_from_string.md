# OpenSSL::X509::ExtensionFactory#create_ext_from_string

### def create_ext_from_string(str)  -> OpenSSL::X509::Extension

文字列から [OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) オブジェクトを生成します。

文字列は "oid = value" もしくは "oid = critical, value" という形式である必要があります。

- **param** `str` -- 生成する拡張領域のデータの文字列
- **SEE** [OpenSSL::X509::ExtensionFactory#create_ext](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext.md)
