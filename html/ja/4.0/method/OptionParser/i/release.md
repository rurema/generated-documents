# OptionParser#release

### def release       -> String

プログラムのリリースを文字列で返します。

```ruby title="例"
require "optparse"

OptionParser.new do |opts|
  p opts.release # => nil
  opts.release = "2019-05-01"
  p opts.release # => "2019-05-01"
end
```
