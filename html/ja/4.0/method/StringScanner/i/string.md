# StringScanner#string

### def string -> String

スキャン対象にしている文字列を返します。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.string # => "test string"
```

返り値は freeze されていません。

```ruby title="例"
require 'strscan'

s = StringScanner.new('test string')
p s.string.frozen? # => false
```

なお、このメソッドは StringScanner.new に渡した文字列をそのまま返しますが、この仕様が将来に渡って保証されるわけではありません。
この仕様に依存したコードを書かないようにしましょう。

```ruby title="例"
require 'strscan'

str = 'test string'
s = StringScanner.new(str)
p s.string == str  # => true
p s.string.eql?(str) # => true (将来は false になる可能性がある)
```

また、返り値の文字列に対して破壊的な変更もできますが、この操作がスキャン対象の文字列を変更することも保証されません。
この仕様に依存したコードを書かないでください。

```ruby title="例"
require 'strscan'

str = 'test string'
s = StringScanner.new(str)
s.string.replace("0123")
p s.scan(/\w+/)   # => "0123" (将来は "test" が返る可能性あり)
p str             # => "0123" (将来は "test string" が返る可能性あり)
```
