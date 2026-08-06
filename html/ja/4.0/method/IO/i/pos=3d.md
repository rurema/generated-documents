# IO#pos=

### def pos=(n)

ファイルポインタを指定位置に移動します。
[IO#seek](../../../method/IO/i/seek.md)(n, IO::SEEK_SET) と同じです。

- **param** `n` -- 先頭からのオフセットを整数で指定します。

- **raise** `IOError` -- 既に close されている場合に発生します。

```ruby title="例"
IO.write("testfile", "This is line one\nThis is line two\n")
File.open("testfile") do |f|
  p f.pos  # => 0
  f.pos = 17
  p f.gets # => "This is line two\n"
end
```
