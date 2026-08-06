# IO#tty?

### def isatty    -> bool
### def tty?      -> bool

入出力ポートがttyに結合している時、真を返します。そうでない場合 false を返します。

- **raise** `IOError` -- 既に close されている場合に発生します。

```ruby title="例"
p File.new("testfile").isatty # => false
p File.new("/dev/tty").isatty # => true
```
