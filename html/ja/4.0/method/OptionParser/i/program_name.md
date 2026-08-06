# OptionParser#program_name

### def program_name           -> String

プログラムの名前を文字列で返します。

デフォルトは $0 が使われます。

- **return** -- プログラムの名前を文字列で返します。

```ruby title="例"
require "optparse"

OptionParser.new do |opts|
  p $0                 # => /path/to/filename.rb
  p opts.program_name  # => filename
end
```
