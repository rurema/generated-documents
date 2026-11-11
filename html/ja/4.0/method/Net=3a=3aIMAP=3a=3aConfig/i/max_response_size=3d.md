# Net::IMAP::Config#max_response_size=

### def max_response_size=(val)

サーバの応答 1 つの大きさの上限(バイト数)を設定します。

`val` は nil でなければ [Kernel?.Integer](../../../method/Kernel/m/Integer.md) で整数に変換します。

- **param** `val` -- 上限のバイト数。nil で上限をなくします。
- **raise** `ArgumentError` -- 整数に変換できない文字列を指定した場合に発生します。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new
config.max_response_size = "1024"
p config.max_response_size # => 1024
config.max_response_size = nil
p config.max_response_size # => nil
```

- **SEE** [Net::IMAP::Config#max_response_size](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/max_response_size.md), [Net::IMAP#max_response_size=](../../../method/Net=3a=3aIMAP/i/max_response_size=3d.md)
