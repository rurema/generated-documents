# Net::IMAP::Config#to_s

### def inspect -> String
### def to_s -> String

`self` で値を設定した属性と継承の連鎖を表す文字列を返します。

継承元で値を設定した属性も、継承元ごとに再帰的に示します。
既定値の設定から継承した属性は示しません。

```ruby title="例"
require 'net/imap'

Net::IMAP.debug = true
p Net::IMAP::Config.global
# => #<Net::IMAP::Config.global debug=true inherits from Net::IMAP::Config.default>
```

- **SEE** [Net::IMAP::Config#pretty_print](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/pretty_print.md), [Net::IMAP::Config#to_h](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/to_h.md)
