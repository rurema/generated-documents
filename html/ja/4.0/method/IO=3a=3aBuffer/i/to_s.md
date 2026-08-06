# IO::Buffer#to_s

### def to_s -> String

バッファの状態を短く表した文字列を返します。

メモリ領域のアドレスと大きさ、状態を表すフラグが含まれます。
この表示形式は将来変更される可能性があります。

```ruby
p IO::Buffer.new(4).to_s # => "#<IO::Buffer 0x0000600002d10000+4 INTERNAL>"
```

アドレスの部分は実行するたびに変わります。

- **SEE** [IO::Buffer#inspect](../../../method/IO=3a=3aBuffer/i/inspect.md)
