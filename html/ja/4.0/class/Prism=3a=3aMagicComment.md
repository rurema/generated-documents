# class Prism::MagicComment < Object

[Prism::ParseResult#magic_comments](../method/Prism=3a=3aParseResult/i/magic_comments.md) で得られる、マジックコメント
(`# frozen_string_literal: true` のような、Ruby の動作に影響を与える特別な形式のコメント)を表すクラスです。

キーも値も**文字列**として取得されます。`"true"` を真偽値に変換するような意味の解釈は行われないことに注意してください。

```ruby title="例"
require "prism"

result = Prism.parse(<<~RUBY)
  # frozen_string_literal: true
  puts "hi"
RUBY
magic = result.magic_comments.first
p magic.key   # => "frozen_string_literal"
p magic.value # => "true"
```

- **SEE** [Prism::ParseResult#magic_comments](../method/Prism=3a=3aParseResult/i/magic_comments.md)

## Instance Methods

- [key](../method/Prism=3a=3aMagicComment/i/key.md)
- [key_loc](../method/Prism=3a=3aMagicComment/i/key_loc.md)
- [value](../method/Prism=3a=3aMagicComment/i/value.md)
- [value_loc](../method/Prism=3a=3aMagicComment/i/value_loc.md)
