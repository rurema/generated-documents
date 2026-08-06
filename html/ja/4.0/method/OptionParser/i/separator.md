# OptionParser#separator

### def separator(sep)    -> ()

サマリにオプションを区切るための文字列 sep を挿入します。
オプションにいくつかの種類がある場合に、サマリがわかりやすくなります。

サマリには on メソッドを呼んだ順にオプションが表示されるので、区切りを挿入したいところでこのメソッドを呼びます。

- **param** `sep` -- サマリの区切りを文字列で指定します。

```ruby
require 'optparse'
opts = OptionParser.new
opts.banner = "Usage: example.rb [options]"

opts.separator ""
opts.separator "Specific options:"

opts.on("-r", "--require LIBRARY") do |lib|
        options.library << lib
end

opts.separator ""
opts.separator "Common options:"

opts.on_tail("-h", "--help", "Show this message") do
  puts opts
  exit
end
```
