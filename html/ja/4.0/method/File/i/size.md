# File#size

### def size     -> Integer

ファイルのサイズを返します。

```ruby title="例"
File.open("/dev/null") do |f|
  p f.size # => 0
end
```

- **raise** `IOError` -- 自身が close されている場合に発生します。

- **raise** `Errno::EXXX` -- 失敗した場合に発生します。

- **SEE** [File#lstat](../../../method/File/i/lstat.md)
