# class Prism::ParseError < Object

[Prism::ParseResult#errors](../method/Prism=3a=3aParseResult/i/errors.md) で得られる、構文解析中に発生したエラーを表すクラスです。

例外クラスではないことに注意してください。prism はエラー耐性のあるパーサであり、構文エラーがあっても例外を発生させず、見つかったエラーをこのクラスのインスタンスとして
[Prism::ParseResult#errors](../method/Prism=3a=3aParseResult/i/errors.md) に蓄積します。

```ruby title="例"
require "prism"

error = Prism.parse("1 +\n").errors.first
p error.class    # => Prism::ParseError
p error.message  # => "unexpected end-of-input; expected an expression after the operator"
p error.location.start_line # => 1
```

- **SEE** [Prism::ParseResult#errors](../method/Prism=3a=3aParseResult/i/errors.md), [Prism::ParseWarning](../class/Prism=3a=3aParseWarning.md)

## Instance Methods

- [level](../method/Prism=3a=3aParseError/i/level.md)
- [location](../method/Prism=3a=3aParseError/i/location.md)
- [message](../method/Prism=3a=3aParseError/i/message.md)
- [type](../method/Prism=3a=3aParseError/i/type.md)
