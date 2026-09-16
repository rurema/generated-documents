# Coverage.suspend

### def Coverage.suspend -> nil

カバレッジの測定を一時停止します。

再開するには [Coverage.resume](../../../method/Coverage/s/resume.md) を使います。

- **raise** `RuntimeError` -- 測定中でない場合に発生します。

```ruby
require "coverage"
Coverage.start
Coverage.suspend
p Coverage.state  # => :suspended
```

- **SEE** [Coverage.resume](../../../method/Coverage/s/resume.md)
