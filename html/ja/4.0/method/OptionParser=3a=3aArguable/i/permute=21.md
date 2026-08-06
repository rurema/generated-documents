# OptionParser::Arguable#permute!

### def permute!             -> [String]

自身を破壊的にパースし、パースされずに残った引数を文字列の配列として返します。
[OptionParser#permute!](../../../method/OptionParser/i/permute=21.md) を参照して下さい。

- **raise** `OptionParser::ParseError` -- 自身のパースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブク
                                ラスの例外になります。

```ruby
require 'optparse'

o = nil
ARGV.options.on('-a'){ o = true }
ARGV.permute!
p o                                #=> true
```
