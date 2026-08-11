# Coverage.peek_result

### def Coverage.peek_result -> Hash

測定を止めることなく、測定中のその時の結果をハッシュで返します。
測定結果の詳細は、[coverage](../../../library/coverage.md) ライブラリ を参照してください。

これは、Coverage.result(stop: false, clear: false) と同じです。

- **return** -- 測定途中結果を表すハッシュ

- **raise** `RuntimeError` -- [Coverage.start](../../../method/Coverage/s/start.md) を実行する前に実行された場合に発生します。

```ruby title="bool.rb"
def bool(obj)
  if obj
    true
  else
    false
  end
end
```

```ruby
require "coverage"

Coverage.start

load "bool.rb"
p Coverage.peek_result  # => {"bool.rb"=>[1, 0, 0, nil, 0, nil, nil]}

bool(true)
p Coverage.peek_result  # => {"bool.rb"=>[1, 1, 1, nil, 0, nil, nil]}

bool(false)
p Coverage.peek_result  # => {"bool.rb"=>[1, 2, 1, nil, 1, nil, nil]}
```

- **SEE** [Coverage.result](../../../method/Coverage/s/result.md)
