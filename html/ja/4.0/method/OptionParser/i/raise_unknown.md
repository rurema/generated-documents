# OptionParser#raise_unknown

### def raise_unknown           -> bool
### def raise_unknown=(newstate)

未知のオプションを検出した時に例外を発生させるかどうかを表します。デフォルトは true です。

false を指定すると、未知のオプションに出会った時点で例外を発生させずに、
[OptionParser#terminate](../../../method/OptionParser/i/terminate.md) を呼んだときと同様にその場でパースを打ち切ります。
そのオプション以降の引数は、パースされずに残った引数として返り値に含まれます。

- **param** `newstate` -- 未知のオプションで例外を発生させるかどうかを true か false で指定します。

- **return** -- 現在の設定を true か false で返します。

```ruby
require "optparse"

opts = OptionParser.new
opts.on("-a")
opts.raise_unknown = false
p opts.parse(["-a", "-x", "-a"])   # => ["-x", "-a"]
```
