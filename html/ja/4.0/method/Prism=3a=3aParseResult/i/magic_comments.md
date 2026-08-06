# Prism::ParseResult#magic_comments

### def magic_comments -> Array

構文解析中に見つかったマジックコメント([Prism::MagicComment](../../../class/Prism=3a=3aMagicComment.md) のインスタンス)の配列を返します。`# frozen_string_literal: true` のような、Ruby の動作に影響を与える特別な形式のコメントが対象です。
各要素は `key`(項目名)と `value`(値)を持ちます。

```ruby title="例"
require "prism"

result = Prism.parse(<<~RUBY)
  # frozen_string_literal: true
  puts "hi"
RUBY
p result.magic_comments.size        # => 1
p result.magic_comments.first.key   # => "frozen_string_literal"
p result.magic_comments.first.value # => "true"
```
