# File::Stat#world_readable?

### def world_readable? -> Integer | nil

全てのユーザから読めるならば、そのファイルのパーミッションを表す整数を返します。そうでない場合は nil を返します。

整数の意味はプラットフォームに依存します。

```ruby
m = File.stat("/etc/passwd").world_readable?  # => 420
p sprintf("%o", m)                            # => "644"
```
