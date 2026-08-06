# File.world_readable?

### def File.world_readable?(path)    -> Integer | nil

path が全てのユーザから読めるならばそのファイルのパーミッションを表す整数を返します。そうでない場合は nil を返します。

整数の意味はプラットフォームに依存します。

- **param** `path` -- パスを表す文字列か IO オブジェクトを指定します。

```ruby title="例"
m = File.world_readable?("/etc/passwd")
p "%o" % m                             # => "644"
```
