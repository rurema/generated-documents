# IO#binmode

### def binmode    -> self

ストリームをバイナリモードにします。MSDOS などバイナリモードの存在する OS でのみ有効です。そうでない場合このメソッドは何もしません。

バイナリモードから通常のモードに戻す方法は再オープンしかありません。

- **raise** `Errno::EXXX` -- モードの変更に失敗した場合に発生します。

```ruby title="例"
IO.open(IO.sysopen("testfile", "w+")) do |io|
  p io.binmode? # => false
  p io.binmode  # => #<IO:fd 8>
  p io.binmode? # => true
end
```

- **SEE** [IO#io_binmode](../../../class/IO.md#io_binmode), [IO#binmode?](../../../method/IO/i/binmode=3f.md)
