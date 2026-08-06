# StringScanner#check_until

### def check_until(regexp) -> String | nil

regexp が一致するまで文字列をスキャンします。
マッチに成功したらスキャン開始位置からマッチ部分の末尾までの部分文字列を返します。
マッチに失敗したら nil を返します。

このメソッドはマッチが成功してもスキャンポインタを進めません。

- **param** `regexp` -- マッチに用いる正規表現を指定します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.check_until(/str/) # => "test str"
p s.matched          # => "str"
p s.pos              # => 0
p s.pre_match        # => "test "
```
