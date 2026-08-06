# OptionParser::Arguable#options

### def options                -> OptionParser
### def options{|opt| ... }    -> object | nil

自身をパースするための [OptionParser](../../../class/OptionParser.md) オブジェクトを返します。
初回呼び出し時に自動的に生成されます。
この [OptionParser#default_argv](../../../method/OptionParser/i/default_argv.md) には self がセットされています。

ブロックを与えた場合は、[OptionParser](../../../class/OptionParser.md) を引数としてブロックを実行します。
ブロックの実行結果を返します。
ブロックの実行途中で [OptionParser::ParseError](../../../class/OptionParser=3a=3aParseError.md)
が発生した場合は、全て rescue し、エラーメッセージを出力し、
nil を返します。

```ruby
require 'optparse'

o = nil
ARGV.options{|opt|
  opt.on('-a'){ o = true }
  opt.parse!
}
p o                         #=> true
```
