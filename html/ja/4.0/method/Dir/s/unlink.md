# Dir.unlink

### def Dir.delete(path)    -> 0
### def Dir.rmdir(path)     -> 0
### def Dir.unlink(path)    -> 0

ディレクトリを削除します。ディレクトリは空でなければいけません。ディレクトリの削除に成功すれば 0 を返します。

- **param** `path` -- ディレクトリのパスを文字列で指定します。

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

```ruby title="例"
Dir.delete("/tmp/hoge-jbrYBh.tmp")
```
