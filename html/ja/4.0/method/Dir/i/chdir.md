# Dir#chdir

### def chdir    -> 0
### def chdir { ... }    -> object

カレントディレクトリを self が指すディレクトリに変更します。

ブロックを指定しない場合、カレントディレクトリの変更に成功すれば 0 を返します。

ブロックを指定した場合、カレントディレクトリの変更はブロックの実行中に限られます。
ブロックの実行結果を返します。

- **raise** `IOError` -- 既に自身が close している場合に発生します。
- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

```ruby title="例"
Dir.chdir("/var/spool/mail")
d = Dir.new("/usr")
d.chdir do
  p Dir.pwd # => "/usr"
end
p Dir.pwd   # => "/var/spool/mail"
```

- **SEE** [Dir.chdir](../../../method/Dir/s/chdir.md), [Dir.fchdir](../../../method/Dir/s/fchdir.md)
