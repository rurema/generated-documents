# URI::MailTo#to

### def to         -> String

自身の e-mail アドレスを文字列で返します。

```ruby title="例"
require 'uri'
p URI.parse("mailto:nospam@example.com").to     # => "nospam@example.com"
```
