# ARGF.class#fileno

### def fileno -> Integer
{: since=""}
### def to_i   -> Integer
{: since=""}

現在オープンしているファイルのファイル記述子を表す整数を返します。

```ruby
p ARGF.fileno  # => 3
```

- **raise** `ArgumentError` -- 現在開いているファイルがない場合に発生します。
