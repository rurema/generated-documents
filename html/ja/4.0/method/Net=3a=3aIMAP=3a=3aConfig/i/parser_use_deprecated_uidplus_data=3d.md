# Net::IMAP::Config#parser_use_deprecated_uidplus_data=

### def parser_use_deprecated_uidplus_data=(val)

COPYUID と APPENDUID の応答コードを解析するときに非推奨の警告を出すかどうかを設定します。

- **param** `val` -- true、`:up_to_max_size`、false のいずれか
- **raise** `ArgumentError` -- 上記以外の値を指定した場合に発生します。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new
config.parser_use_deprecated_uidplus_data = :up_to_max_size
p config.parser_use_deprecated_uidplus_data # => :up_to_max_size
```

- **SEE** [Net::IMAP::Config#parser_use_deprecated_uidplus_data](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/parser_use_deprecated_uidplus_data.md)
