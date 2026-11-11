# Net::IMAP::Config#inherited?

### def inherited?(*attrs) -> bool

`attrs` の属性がすべて継承元から継承されていれば真を返します。

`attrs` を省略すると、すべての属性を調べます。
1 つでも `self` で値を設定した属性があれば偽を返します。

- **param** `attrs` -- 属性の名前のシンボル


```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new(open_timeout: 1)
p config.inherited?(:open_timeout) # => false
p config.inherited?(:debug)        # => true
```

- **SEE** [Net::IMAP::Config#reset](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/reset.md)
