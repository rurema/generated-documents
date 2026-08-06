# OptionParser#to_s

### def help    -> String
### def to_s    -> String

サマリの文字列を返します。

```ruby title="例"
require "optparse"

options = {}
opts = OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end
end

puts opts.help

# => Usage: example.rb [options]
#    -v, --[no-]verbose               Run verbosely
```
