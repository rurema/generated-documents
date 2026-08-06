# IO::Buffer#readonly?

### def readonly? -> bool

バッファが読み取り専用の場合に true を返します。

読み取り専用のバッファは、[IO::Buffer#set_value](../../../method/IO=3a=3aBuffer/i/set_value.md) や [IO::Buffer#set_string](../../../method/IO=3a=3aBuffer/i/set_string.md)、
[IO::Buffer#copy](../../../method/IO=3a=3aBuffer/i/copy.md) などで変更できません。

[IO::Buffer.for](../../../method/IO=3a=3aBuffer/s/for.md) にブロックを渡さずに作ったバッファは、元の文字列が freeze
されているかどうかによらず、常に読み取り専用になります。内部で作った文字列の複製をバッファの元として使うためです。
ブロックを渡した場合は元の文字列のメモリを直接参照するため、その文字列が freeze されている場合にだけ読み取り専用になります。
読み取り専用のファイルから作ったバッファも読み取り専用です。

```ruby
# ブロックを渡さない場合は、元の文字列が freeze されていなくても読み取り専用
p IO::Buffer.for("test").readonly?                  # => true

# ブロックを渡した場合は元の文字列に従う
p IO::Buffer.for("test") { |buf| buf.readonly? }    # => false
p IO::Buffer.for("test".freeze) { |buf| buf.readonly? } # => true

p IO::Buffer.new(4).readonly?                       # => false
```
