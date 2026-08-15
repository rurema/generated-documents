# Psych.dump_stream

### def Psych.dump_stream(*objects) -> String

オブジェクト列を YAML ドキュメント列に変換します。

- **param** `objects` -- 変換対象のオブジェクト列

```ruby title="例"
require 'psych'

p Psych.dump_stream("foo\n  ", {}) # => "--- ! \"foo\\n  \"\n--- {}\n"
```
