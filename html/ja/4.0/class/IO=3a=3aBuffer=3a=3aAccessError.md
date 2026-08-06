# class IO::Buffer::AccessError < RuntimeError

書き込みできない [IO::Buffer](../class/IO=3a=3aBuffer.md) に書き込もうとした場合や、外部(external)のバッファをリサイズしようとした場合に発生します。

```ruby
buf = IO::Buffer.for("abc")
p buf.readonly?      # => true
buf.set_string("z")  # ~> IO::Buffer::AccessError
```

- **SEE** [IO::Buffer](../class/IO=3a=3aBuffer.md), [IO::Buffer::READONLY](../method/IO=3a=3aBuffer/c/READONLY.md)
