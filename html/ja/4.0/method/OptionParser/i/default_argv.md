# OptionParser#default_argv

### def default_argv    -> [String]

自身がデフォルトでパースする引数を文字列の配列で返します。

```ruby title="例"
require "optparse"

opts = OptionParser.new

# --hoo param1 --bar param2 をパラメーターに指定して実行
p opts.default_argv # => ["--foo", "param1", "--bar", "param2"]
```
