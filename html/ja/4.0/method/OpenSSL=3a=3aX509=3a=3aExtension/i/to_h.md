# OpenSSL::X509::Extension#to_h

### def to_h -> Hash

拡張領域の内容を、

```text
{ "oid" => 識別子(extnID), "value" => 値(extnValue), "critical" => 重要度(critical) }
```

というハッシュで返します。
