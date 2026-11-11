# Net::IMAP::Config#sasl_ir=

### def sasl_ir=(val)

[Net::IMAP#authenticate](../../../method/Net=3a=3aIMAP/i/authenticate.md) で SASL-IR 拡張を使うかどうかを設定します。

`val` には false、`:when_capabilities_cached`、true のいずれかを指定します。

- **param** `val` -- false、`:when_capabilities_cached`、true のいずれか
- **raise** `ArgumentError` -- 上記以外の値を指定した場合に発生します。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new
config.sasl_ir = false
p config.sasl_ir # => false
```

- **SEE** [Net::IMAP::Config#sasl_ir](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/sasl_ir.md)
