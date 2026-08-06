# OpenSSL::X509::ExtensionFactory#create_extension

### def create_extension(obj)  -> OpenSSL::X509::Extension
### def create_extension(oid, value, critical=false)  -> OpenSSL::X509::Extension

[OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) のインスタンスを生成して返します。

引数の個数が1個である場合、それが配列、ハッシュ、文字列のいずれかであるならば、
[OpenSSL::X509::ExtensionFactory#create_ext_from_array](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext_from_array.md)、
[OpenSSL::X509::ExtensionFactory#create_ext_from_hash](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext_from_hash.md)、
[OpenSSL::X509::ExtensionFactory#create_ext_from_string](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext_from_string.md)、がそれぞれ呼びだされてオブジェクトを生成します。

引数が2個以上である場合は、
[OpenSSL::X509::ExtensionFactory#create_ext](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext.md) が呼びだされてオブジェクトを生成します。

- **param** `obj` -- 拡張領域のデータ。配列、ハッシュ、文字列のいずれか
- **param** `oid` -- 拡張領域の識別子を表す文字列
- **param** `value` -- 拡張領域の値を表す文字列
- **param** `critical` -- 重要度(真偽値)
