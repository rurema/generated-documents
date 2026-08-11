# IO#rewind

### def rewind    -> 0

ファイルポインタを先頭に移動します。[IO#lineno](../../../method/IO/i/lineno.md) は 0 になります。

- **raise** `IOError` -- 既に close されている場合に発生します。

```ruby
f = File.new("testfile")
p f.readline             # => "This is line one\n"
p f.rewind               # => 0
p f.lineno               # => 0
p f.readline             # => "This is line one\n"
```
