# OptionParser#on_tail

### def on_tail(*arg, &block) -> self

オプションを取り扱うためのブロックを自身の持つリストの最後に登録します。

--version や --help の説明をサマリの最後に表示したい時に便利です。

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

```ruby title="例"
require "optparse"

opts = OptionParser.new
opts.on_tail("-h", "--help", "Show this message") do
  puts opts
  exit
end

opts.on_tail("--version", "Show version") do
  puts OptionParser::Version.join('.')
  exit
end
```

- **SEE** [OptionParser#on](../../../method/OptionParser/i/on.md), [OptionParser#on_head](../../../method/OptionParser/i/on_head.md)
