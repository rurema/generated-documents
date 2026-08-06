# IO::Buffer#free

### def free -> self

バッファが確保しているメモリ領域を解放します。

解放の内容はバッファの種類によって異なります。

  - 内部(internal) -- 確保したメモリを解放します。
  - 外部(external) -- 元のオブジェクトとの関連を解消します。
  - マップ(mapped) -- マッピングを解除します。

解放後は、どのメモリ領域も指さない状態になります。
この状態のバッファは大きさ 0 のバッファとして扱われます。

解放したバッファでも [IO::Buffer#resize](../../../method/IO=3a=3aBuffer/i/resize.md) を呼べば、あらためてメモリ領域を確保できます。

```ruby
buf = IO::Buffer.new(4)
buf.set_string("Ruby")

buf.free
p buf.null? # => true
p buf.size  # => 0

# resize すれば再び使える
buf.resize(4)
p buf.size  # => 4
```

- **SEE** [IO::Buffer#transfer](../../../method/IO=3a=3aBuffer/i/transfer.md), [IO::Buffer#null?](../../../method/IO=3a=3aBuffer/i/null=3f.md)
