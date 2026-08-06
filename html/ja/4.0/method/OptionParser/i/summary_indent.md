# OptionParser#summary_indent

### def summary_indent          -> String

サマリを表示する時のインデントを文字列で返します。

- **return** -- サマリを表示する時のインデントを文字列で返します。

```ruby title="例"
require "optparse"

opts = OptionParser.new do |opts|
  opts.on_head("-i", "--init")
  opts.on("-u", "--update")
  opts.on_tail("-h", "--help")
end

p opts.summary_indent       # => "    "
p opts.summarize
# => ["    -i, --init\n", "    -u, --update\n", "    -h, --help\n"]
opts.summary_indent = "  "
p opts.summary_indent       # => "  "
p opts.summarize
# => ["  -i, --init\n", "  -u, --update\n", "  -h, --help\n"]
```
