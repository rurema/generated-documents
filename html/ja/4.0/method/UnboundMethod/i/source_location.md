# UnboundMethod#source_location

### def source_location -> [String, Integer] | nil

ソースコードのファイル名と行番号を配列で返します。

その手続オブジェクトが ruby で定義されていない(つまりネイティブである)場合は nil を返します。

```ruby title="例"
require 'time'

p Time.instance_method(:zone).source_location     # => nil
p Time.instance_method(:httpdate).source_location # => ["/Users/user/.rbenv/versions/2.4.3/lib/ruby/2.4.0/time.rb", 654]
```

- **SEE** [Proc#source_location](../../../method/Proc/i/source_location.md), [Method#source_location](../../../method/Method/i/source_location.md)
