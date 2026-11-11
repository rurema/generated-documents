# Net::IMAP.config

### def Net::IMAP.config -> Net::IMAP::Config

全体の設定 [Net::IMAP::Config.global](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/global.md) を返します。

[Net::IMAP.new](../../../method/Net=3a=3aIMAP/s/new.md) で `config` を省略すると、接続ごとの設定 [Net::IMAP#config](../../../method/Net=3a=3aIMAP/i/config.md) はこの設定を継承します。

```ruby title="例"
require 'net/imap'

p Net::IMAP.config.equal?(Net::IMAP::Config.global) # => true
p Net::IMAP.config.open_timeout                     # => 30
```

- **SEE** [Net::IMAP::Config](../../../class/Net=3a=3aIMAP=3a=3aConfig.md), [Net::IMAP#config](../../../method/Net=3a=3aIMAP/i/config.md)
