# Net::IMAP::Config#responses_without_block=

### def responses_without_block=(val)

[Net::IMAP#responses](../../../method/Net=3a=3aIMAP/i/responses.md) を `type` もブロックも渡さずに呼んだときの動作を設定します。

- **param** `val` -- `:silence_deprecation_warning`、`:warn`、`:frozen_dup`、`:raise` のいずれか
- **raise** `ArgumentError` -- 上記以外の値を指定した場合に発生します。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new
config.responses_without_block = :raise
p config.responses_without_block # => :raise
```

- **SEE** [Net::IMAP::Config#responses_without_block](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/responses_without_block.md)
