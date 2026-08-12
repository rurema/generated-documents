# OpenSSL::X509::ExtensionFactory#create_ext_from_hash

### def create_ext_from_hash(hash)  -> OpenSSL::X509::Extension

ハッシュから [OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) オブジェクトを生成します。

渡すハッシュテーブルは

```text
{"oid" => OID文字列, "value" => value文字列, "critical" => 真偽値 }
```

という内容が必要です。"critical" を省略した場合は false が渡されるのと同じになります。

- **param** `hash` -- 生成する拡張領域のデータのハッシュテーブル
- **SEE** [OpenSSL::X509::ExtensionFactory#create_ext](../../../method/OpenSSL=3a=3aX509=3a=3aExtensionFactory/i/create_ext.md)
