# StringIO#getc

### def getc    -> String | nil

自身から 1 文字読み込んで、その文字を返します。
文字列の終端に到達した時には nil を返します。

- **raise** `IOError` -- 自身が読み取り不可なら発生します。

```ruby title="例"
require "stringio"
a = StringIO.new("ho")
p a.getc                 # => "h"
p a.getc                 # => "o"
p a.getc                 # => nil
```
