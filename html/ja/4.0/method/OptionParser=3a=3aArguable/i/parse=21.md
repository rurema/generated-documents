# OptionParser::Arguable#parse!

### def parse!(into: nil, exact: options.require_exact)     -> [String]

自身を破壊的にパースし、パースされずに残った引数を文字列の配列として返します。
[OptionParser#parse!](../../../method/OptionParser/i/parse=21.md) を参照して下さい。

`into` と `exact` のキーワード引数は [OptionParser#parse!](../../../method/OptionParser/i/parse=21.md) にそのまま渡します。それ以外のキーワード引数を渡しても無視されます([ArgumentError](../../../class/ArgumentError.md) は発生しません)。

- **param** `into` -- オプションを格納するハッシュを指定します。[OptionParser#parse!](../../../method/OptionParser/i/parse=21.md) の `into` と同じです。

- **param** `exact` -- 真を指定すると、ロングオプションを省略した形([OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) を参照)を受け付けなくなります。省略時は [OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) の値です。

- **raise** `OptionParser::ParseError` -- 自身のパースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブクラスの例外になります。

```ruby
require 'optparse'

o = nil
ARGV.options.on('-a'){ o = true }
ARGV.parse!
p o                                # => true
```


```ruby
require 'optparse'

argv = ["--verbose", "--name", "foo", "file.txt"]
argv.extend(OptionParser::Arguable)
argv.options.on("-v", "--verbose")
argv.options.on("--name NAME")
h = {}
argv.parse!(into: h)
p argv                             # => ["file.txt"]
p h                                # => {verbose: true, name: "foo"}
```
