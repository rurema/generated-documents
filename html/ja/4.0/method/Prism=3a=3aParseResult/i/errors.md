# Prism::ParseResult#errors

### def errors -> Array

構文解析中に発生したエラー([Prism::ParseError](../../../class/Prism=3a=3aParseError.md) のインスタンス)の配列を返します。エラーがなければ空配列です。

```ruby title="例"
require "prism"

errors = Prism.parse('"unterminated').errors
p errors.size            # => 1
p errors.first.class     # => Prism::ParseError
p errors.first.message   # => "unterminated string meets end of file"
p errors.first.level     # => :syntax
```

- **SEE** [Prism::ParseResult#success?](../../../method/Prism=3a=3aParseResult/i/success=3f.md), [Prism::ParseResult#warnings](../../../method/Prism=3a=3aParseResult/i/warnings.md)
