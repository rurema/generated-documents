# StringScanner#exist?

### def exist?(regexp) -> Integer | nil

スキャンポインタの位置から、次にマッチする文字列の末尾までの長さを返します。

マッチに失敗したら nil を返します。

このメソッドはマッチが成功してもスキャンポインタを進めません。

- **param** `regexp` -- マッチに用いる正規表現を指定します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.exist?(/s/) # => 3
p s.exist?(//)  # => 0
p s.scan(/\w+/) # => "test"
p s.exist?(/s/) # => 2
p s.exist?(/e/) # => nil
```
