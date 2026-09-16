# OpenURI::Meta#metas

### def metas -> Hash
{: since="2.1.0"}

ヘッダを収録したハッシュを返します。

[OpenURI::Meta#meta](../../../method/OpenURI=3a=3aMeta/i/meta.md) と異なり、値は文字列の配列になります。
同じフィールド名のヘッダが複数存在する場合は、それらをまとめて 1 つの配列にします。

```ruby title="例"
require 'open-uri'
URI.open('http://example.com/') {|f|
  p f.metas["content-type"]  # => ["text/html"]
}
```

- **SEE** [OpenURI::Meta#meta](../../../method/OpenURI=3a=3aMeta/i/meta.md)
