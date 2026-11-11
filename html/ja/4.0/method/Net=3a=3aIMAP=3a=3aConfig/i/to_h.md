# Net::IMAP::Config#to_h

### def to_h -> {Symbol => object}

すべての属性の名前と値をハッシュにして返します。

値は継承元から継承したものも含みます。

```ruby title="例"
require 'net/imap'

config = Net::IMAP::Config.new(open_timeout: 1)
p config.to_h[:open_timeout]          # => 1
p config.to_h[:idle_response_timeout] # => 5
```
