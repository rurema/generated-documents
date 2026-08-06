# Dir.pwd

### def Dir.getwd    -> String
### def Dir.pwd      -> String

カレントディレクトリのフルパスを文字列で返します。

- **raise** `Errno::EXXX` -- カレントディレクトリの取得に失敗した場合に発生します(が、普通は失敗することはありません)。

```ruby title="例"
p Dir.chdir("/tmp") #=> 0
p Dir.getwd         #=> "/tmp"
```
