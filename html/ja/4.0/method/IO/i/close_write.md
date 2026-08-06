# IO#close_write

### def close_write    -> nil

書き込み用の IO を close します。

既に close されていた場合には単に無視されます。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- close に失敗した場合に発生します。

```ruby title="例"
f = IO.popen("/bin/sh","r+") do |f|
  f.close_write
  # f.print "nowhere" # => IOError: not opened for writing
end
```

- **SEE** [IO#close](../../../method/IO/i/close.md), [IO#closed?](../../../method/IO/i/closed=3f.md), [IO#close_read](../../../method/IO/i/close_read.md)
