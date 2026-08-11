# OptionParser::Arguable#order!

### def order!               -> [String]
### def order!{|s| ... }     -> [String]

自身を破壊的にパースし、パースされずに残った引数を文字列の配列として返します。
[OptionParser#order!](../../../method/OptionParser/i/order=21.md) を参照して下さい。

- **raise** `OptionParser::ParseError` -- 自身のパースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブクラスの例外になります。

```ruby
require 'optparse'

o = nil
ARGV.options.on('-a'){ o = true }
ARGV.order!
p o                                # => true
```
