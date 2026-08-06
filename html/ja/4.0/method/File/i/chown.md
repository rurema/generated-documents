# File#chown

### def chown(owner, group)    -> 0

ファイルのオーナーとグループを変更します。

適切な権限があればファイルのオーナーとグループを変更できます。
所有者の変更に成功した場合は 0 を返します。変更に失敗した場合は例外 [Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。

- **param** `owner` -- [man:chown(2)] と同様に数値で指定します。nil または -1 を指定することで、オーナーを維持できます。

- **param** `group` -- [man:chown(2)] と同様に数値で指定します。nil または -1 を指定することで、グループを維持できます。

- **raise** `IOError` -- 自身が close されている場合に発生します。

- **raise** `Errno::EXXX` -- 変更に失敗した場合に発生します。

```ruby title="例"
p File.open("testfile") { |f| f.chown(502, 1000) }  # => 0
p File.stat("testfile").uid                       # => 502
p File.stat("testfile").gid                       # => 1000
```

- **SEE** [File.chown](../../../method/File/s/chown.md)
