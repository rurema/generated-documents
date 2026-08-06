# Dir.fchdir

### def Dir.fchdir(fd)    -> 0
### def Dir.fchdir(fd) { ... }    -> object

カレントディレクトリを、整数のファイルディスクリプタ fd が指すディレクトリに変更します。

ファイルディスクリプタを UNIX ソケット経由で渡したり子プロセスに渡したりする場合、[Dir.chdir](../../../method/Dir/s/chdir.md) の代わりに fchdir を使うと TOCTOU (time-of-check to
time-of-use) 脆弱性を避けられます。

ブロックを指定しない場合、カレントディレクトリを fd の指すディレクトリに変更し、
0 を返します。

ブロックを指定した場合、カレントディレクトリの変更はブロックの実行中に限られます。
ブロックの実行結果を返します。

- **param** `fd` -- ディレクトリを指すファイルディスクリプタを整数で指定します。

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

```ruby title="例"
Dir.chdir("/var/spool/mail")
p Dir.pwd            # => "/var/spool/mail"

dir = Dir.new("/usr")
Dir.fchdir(dir.fileno)
p Dir.pwd            # => "/usr"
```

- **SEE** [Dir.chdir](../../../method/Dir/s/chdir.md), [Dir#fileno](../../../method/Dir/i/fileno.md), [Dir.for_fd](../../../method/Dir/s/for_fd.md)
