# Net::IMAP::Config#idle_response_timeout=

### def idle_response_timeout=(val)

IDLE の応答を待つ秒数を設定します。

`val` は [Kernel?.Integer](../../../method/Kernel/m/Integer.md) で整数に変換します。

- **param** `val` -- 待つ秒数
- **raise** `ArgumentError` -- 整数に変換できない文字列を指定した場合に発生します。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new
config.idle_response_timeout = "10"
p config.idle_response_timeout # => 10
```

- **SEE** [Net::IMAP::Config#idle_response_timeout](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/idle_response_timeout.md)
