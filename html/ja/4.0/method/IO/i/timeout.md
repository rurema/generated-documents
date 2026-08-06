# IO#timeout

### def timeout -> Numeric | nil

self に設定されている入出力のタイムアウトを返します。
設定されていない場合は nil を返します。

タイムアウトの設定については [IO#timeout=](../../../method/IO/i/timeout=3d.md) を参照してください。

```ruby title="例"
r, w = IO.pipe
p r.timeout      # => nil
r.timeout = 0.5
p r.timeout      # => 0.5
```

- **SEE** [IO#timeout=](../../../method/IO/i/timeout=3d.md)
