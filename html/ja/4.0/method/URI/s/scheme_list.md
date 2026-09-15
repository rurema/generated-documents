# URI.scheme_list

### def URI.scheme_list -> {String => Class}
{: since="1.9.1"}

定義されているスキームとクラスの対応をハッシュで返します。

キーはスキーム名を表す大文字の文字列、値は対応する [URI::Generic](../../../class/URI=3a=3aGeneric.md) のサブクラスです。

```ruby title="例"
require 'uri'
p URI.scheme_list
# => {"HTTPS" => URI::HTTPS, "LDAP" => URI::LDAP, "FILE" => URI::File, "FTP" => URI::FTP, "LDAPS" => URI::LDAPS, "MAILTO" => URI::MailTo, "WS" => URI::WS, "WSS" => URI::WSS, "HTTP" => URI::HTTP}
```

- **SEE** [URI.register_scheme](../../../method/URI/s/register_scheme.md)
