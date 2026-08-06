# IO#closed?

### def closed?    -> bool

self が完全に(読み込み用と書き込み用の両方が)クローズされている場合に true を返します。
そうでない場合は false を返します。

```ruby title="例"
IO.write("testfile", "test")
f = File.new("testfile")
p f.close       # => nil
p f.closed?     # => true
f = IO.popen("/bin/sh","r+")
p f.close_write # => nil
p f.closed?     # => false
p f.close_read  # => nil
p f.closed?     # => true
```

- **SEE** [IO#close](../../../method/IO/i/close.md), [IO#close_read](../../../method/IO/i/close_read.md), [IO#close_write](../../../method/IO/i/close_write.md)
