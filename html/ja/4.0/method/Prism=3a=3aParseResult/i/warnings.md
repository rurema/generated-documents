# Prism::ParseResult#warnings

### def warnings -> Array

構文解析中に発生した警告([Prism::ParseWarning](../../../class/Prism=3a=3aParseWarning.md) のインスタンス)の配列を返します。警告がなければ空配列です。

```ruby title="例"
require "prism"

warnings = Prism.parse("1 + 2").warnings
p warnings.size           # => 1
p warnings.first.class    # => Prism::ParseWarning
p warnings.first.message
# => "possibly useless use of + in void context"
p warnings.first.level    # => :verbose
```

- **SEE** [Prism::ParseResult#errors](../../../method/Prism=3a=3aParseResult/i/errors.md)
