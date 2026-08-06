# StringScanner#pre_match

### def pre_match -> String | nil

前回マッチを行った文字列のうち、マッチしたところよりも前の部分文字列を返します。前回のマッチが失敗していると常に nil を返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.pre_match # => nil
p s.scan(/\w+/) # => "test"
p s.pre_match # => ""
p s.scan(/\w+/) # => nil
p s.pre_match # => nil
p s.scan(/\s+/) # => " "
p s.pre_match # => "test"
p s.scan(/\w+/) # => "string"
p s.pre_match # => "test "
p s.scan(/\w+/) # => nil
p s.pre_match # => nil
```
