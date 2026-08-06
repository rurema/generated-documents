# IO#fileno

### def fileno    -> Integer
### def to_i      -> Integer

ファイル記述子を表す整数を返します。

- **raise** `IOError` -- 既に close されている場合に発生します。

```ruby title="例"
p $stdin.fileno  # => 0
$stdout.fileno   # => 1
```

- **SEE** [Dir#fileno](../../../method/Dir/i/fileno.md)
