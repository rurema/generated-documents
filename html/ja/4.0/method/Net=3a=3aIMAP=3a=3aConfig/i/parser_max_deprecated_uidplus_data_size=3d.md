# Net::IMAP::Config#parser_max_deprecated_uidplus_data_size=

### def parser_max_deprecated_uidplus_data_size=(val)

互換のために残されている属性の値を設定します。

`val` は [Kernel?.Integer](../../../method/Kernel/m/Integer.md) で整数に変換します。

- **param** `val` -- 設定する整数
- **raise** `ArgumentError` -- 整数に変換できない文字列を指定した場合に発生します。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new
config.parser_max_deprecated_uidplus_data_size = 100
p config.parser_max_deprecated_uidplus_data_size # => 100
```

- **SEE** [Net::IMAP::Config#parser_max_deprecated_uidplus_data_size](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/parser_max_deprecated_uidplus_data_size.md)
