# OptionParser#terminate

### def terminate(arg = nil) -> ()

オプションのパースを打ち切ります。

`arg` を指定すると、パースされずに残った引数の先頭に `arg` を戻します。
オプションを処理するブロックの中から呼び出し、その時点でパースを終了させたい場合に使います。

内部では [OptionParser.terminate](../../../method/OptionParser/s/terminate.md) を呼び出しています。

- **param** `arg` -- パース結果の先頭に戻す文字列を指定します。省略した場合は何も戻しません。

```ruby
require "optparse"

opts = OptionParser.new
opts.on("-a"){ |v| }
opts.on("-b"){ |v| opts.terminate("leftover") }
p opts.parse(["-b", "-a"])   # => ["leftover", "-a"]
```

- **SEE** [OptionParser.terminate](../../../method/OptionParser/s/terminate.md)
