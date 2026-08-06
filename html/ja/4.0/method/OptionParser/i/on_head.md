# OptionParser#on_head

### def on_head(*arg, &block) -> self

オプションを取り扱うためのブロックを自身の持つリストの最初に登録します。

- **param** `arg` -- [OptionParser#on](../../../method/OptionParser/i/on.md) と同様です。

- **param** `block` -- [OptionParser#on](../../../method/OptionParser/i/on.md) と同様です。

```ruby title="例"
require "optparse"

opts = OptionParser.new do |opts|
  opts.on_head("-i", "--init")
  opts.on("-u", "--update")
  opts.on_tail("-h", "--help")
end

puts opts.help

# => Usage: test [options]
#    -i, --init
#    -u, --update
#    -h, --help
```

- **SEE** [OptionParser#on](../../../method/OptionParser/i/on.md), [OptionParser#on_tail](../../../method/OptionParser/i/on_tail.md)
