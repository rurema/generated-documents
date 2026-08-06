# URI::MailTo#to_mailtext

### def to_mailtext      -> String
### def to_rfc822text    -> String

URI オブジェクトからメールテキスト文字列を生成します。

```text title="例"
require 'uri'
p mailto = URI.parse("mailto:ruby-list@ruby-lang.org?subject=subscribe&cc=myaddr")
print mailto.to_mailtext

=> #<URI::MailTo:0x20104a0e URL:mailto:ruby-list@ruby-lang.org?subject=subscribe&cc=myaddr>
   To: ruby-list@ruby-lang.org
   Subject: subscribe
   Cc: myaddr
```
