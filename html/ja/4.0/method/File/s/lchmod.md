# File.lchmod

### def File.lchmod(mode, *filename)    -> Integer

[File.chmod](../../../method/File/s/chmod.md) と同様ですが、シンボリックリンクに関してリンクそのもののモードを変更します。

- **param** `filename` -- ファイル名を表す文字列を指定します。

- **param** `mode` -- [man:chmod(2)] と同様に整数で指定します。

- **raise** `NotImplementedError` -- [man:lchmod(2)] を実装していないシステムでこのメソッドを呼び出すと発生します。

- **raise** `Errno::EXXX` -- モードの変更に失敗した場合に発生します。

```ruby title="例"
IO.write("testfile", "test")
File.symlink("testfile", "testlink")
p File.lstat("testlink").ftype          # => "link"
File.lchmod(0744, "testlink")
p File.stat("testlink").mode.to_s(8)    # => "100644"
p File.lstat("testlink").mode.to_s(8)   # => "120744"
```
