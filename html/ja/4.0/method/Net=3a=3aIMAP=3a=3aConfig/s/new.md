# Net::IMAP::Config.new

### def Net::IMAP::Config.new(parent = Net::IMAP::Config.global, **attrs) -> Net::IMAP::Config
### def Net::IMAP::Config.new(parent = Net::IMAP::Config.global, **attrs) {|config| ... } -> Net::IMAP::Config

`parent` を継承元とする新しい設定を作り、`attrs` で属性の値を設定して返します。

`parent` は [Net::IMAP::Config.[]](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/=5b=5d.md) で変換するので、設定のほかに版の数値や名前やハッシュも指定できます。
ブロックを渡すと、作った設定をブロックに渡してから返します。

- **param** `parent` -- 継承元の設定。省略時は全体の設定
- **param** `attrs` -- 設定する属性の名前と値
- **raise** `ArgumentError` -- `attrs` に未知の属性名がある場合や、属性に不正な値を指定した場合に発生します。
- **raise** `TypeError` -- `parent` に設定に変換できないもの(nil など)を指定した場合に発生します。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new(open_timeout: 10)
p config.open_timeout                            # => 10
p config.parent.equal?(Net::IMAP::Config.global) # => true
p Net::IMAP::Config.new(0.3).sasl_ir             # => false
```

- **SEE** [Net::IMAP::Config#new](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/new.md), [Net::IMAP::Config#with](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/with.md)
