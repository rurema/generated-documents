# Net::IMAP::Config#debug=

### def debug=(val)

デバッグモードの on/off を設定します。

`val` は真偽値に変換します。

- **param** `val` -- 真で on、偽で off にします。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new
config.debug = 1
p config.debug              # => true
p config.inherited?(:debug) # => false
```

- **SEE** [Net::IMAP::Config#debug](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/debug.md), [Net::IMAP.debug=](../../../method/Net=3a=3aIMAP/s/debug=3d.md)
