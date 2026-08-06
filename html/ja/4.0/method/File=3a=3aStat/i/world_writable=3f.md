# File::Stat#world_writable?

### def world_writable? -> Integer | nil

全てのユーザから書き込めるならば、そのファイルのパーミッションを表す整数を返します。そうでない場合は nil を返します。

整数の意味はプラットフォームに依存します。

```ruby
m = File.stat("/tmp").world_writable?         # => 511
p sprintf("%o", m)                            # => "777"
```
