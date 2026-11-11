# Net::IMAP::Config#load_defaults

### def load_defaults(version) -> self

`debug` 以外の属性に `version` の版の既定値を設定して `self` を返します。

継承元は変わりません。
設定した属性は継承元から継承しなくなります。
`version` は [Net::IMAP::Config.[]](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/=5b=5d.md) と同じように、版の数値や名前で指定します。

版の数値や名前を表す文字列も指定できます。

- **param** `version` -- 版の数値か名前
- **raise** `ArgumentError` -- `version` が数値でもシンボルでも文字列でもない場合に発生します。
- **raise** `RangeError` -- 未知の版の数値を指定した場合に発生します。
- **raise** `KeyError` -- 未知の名前を指定した場合に発生します。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new(debug: true)
config.load_defaults(0.4)
p config.enforce_logindisabled              # => false
p config.responses_without_block            # => :silence_deprecation_warning
p config.debug                              # => true
p config.inherited?(:enforce_logindisabled) # => false
```
