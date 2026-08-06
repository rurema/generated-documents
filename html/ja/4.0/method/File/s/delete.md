# File.delete

### def File.delete(*filename)    -> Integer
### def File.unlink(*filename)    -> Integer

ファイルを削除します。削除したファイルの数を返します。
削除に失敗した場合は例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。

このメソッドは通常ファイルの削除用で、ディレクトリの削除には
[Dir.rmdir](../../../method/Dir/s/rmdir.md) を使います。

- **param** `filename` -- ファイル名を表す文字列を指定します。

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

```ruby title="例"
IO.write("test.txt", "test")
p File.exist?("test.txt")  # => true
p File.delete("test.txt")   # => 1
p File.exist?("test.txt")  # => false
begin
  File.delete("test.txt")
rescue
  p $!  # => #<Errno::ENOENT: No such file or directory @ unlink_internal - test.txt>
end
```
