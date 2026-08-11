# IO::Buffer#not!

### def not! -> self

[IO::Buffer#~](../../../method/IO=3a=3aBuffer/i/=7e.md) と同じビット反転を、新しいバッファを作らずに自身に対して行います。`self` を返します。

- **raise** `IO::Buffer::AccessError` -- 読み取り専用のバッファに対して呼び出した場合に発生します。

```ruby
buf = IO::Buffer.for("1234567890").dup
buf.not!
p buf.get_string.bytes.map {|b| "%02x" % b }.join(" ")  # => "ce cd cc cb ca c9 c8 c7 c6 cf"
```

- **SEE** [IO::Buffer#~](../../../method/IO=3a=3aBuffer/i/=7e.md)
