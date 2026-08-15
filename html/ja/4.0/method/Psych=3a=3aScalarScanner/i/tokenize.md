# Psych::ScalarScanner#tokenize

### def tokenize(string) -> object

YAML の scalar である文字列を Ruby のオブジェクトに変換したものを返します。

```ruby
require 'psych'

scanner = Psych::ScalarScanner.new
p scanner.tokenize("yes") # => true
p scanner.tokenize("year") # => "year"
p scanner.tokenize("12") # =>  12
```

- **param** `string` -- 変換文字列
