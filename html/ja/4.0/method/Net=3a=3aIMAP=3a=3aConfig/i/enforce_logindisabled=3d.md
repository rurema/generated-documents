# Net::IMAP::Config#enforce_logindisabled=

### def enforce_logindisabled=(val)

[Net::IMAP#login](../../../method/Net=3a=3aIMAP/i/login.md) の前に、サーバの機能一覧に LOGINDISABLED があるかを確認するかどうかを設定します。

- **param** `val` -- false、`:when_capabilities_cached`、true のいずれか
- **raise** `ArgumentError` -- 上記以外の値を指定した場合に発生します。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new
config.enforce_logindisabled = :when_capabilities_cached
p config.enforce_logindisabled # => :when_capabilities_cached
```

- **SEE** [Net::IMAP::Config#enforce_logindisabled](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/enforce_logindisabled.md)
