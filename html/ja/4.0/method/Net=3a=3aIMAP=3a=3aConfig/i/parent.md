# Net::IMAP::Config#parent

### def parent -> Net::IMAP::Config | nil

継承元の設定を返します。

継承元を持たない [Net::IMAP::Config.default](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/default.md) では nil を返します。

```ruby title="例"
require 'net/imap'

p Net::IMAP::Config.global.parent.equal?(Net::IMAP::Config.default) # => true
p Net::IMAP::Config.default.parent                                   # => nil
```
