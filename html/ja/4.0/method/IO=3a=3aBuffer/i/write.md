# IO::Buffer#write

### def write(io, length = nil, offset = 0) -> Integer

バッファの内容を io に書き込みます。

書き込むのは、少なくとも length バイトです。バッファに続きがあれば、それより多く書き込むことがあります。

書き込みは io の現在の位置から行われ、io の位置は書き込んだ分だけ進みます。

- **param** `io` -- 書き込み先の [IO](../../../class/IO.md) を指定します。

- **param** `length` -- 書き込む最小のバイト数を整数で指定します。
             省略するか nil を指定した場合は、バッファの大きさから offset を
             引いた値、つまりバッファの残り全体になります。
             0 を指定した場合は [man:write(2)] をちょうど 1 回呼びます。

- **param** `offset` -- 書き込む内容の開始位置を、バッファの先頭からの
             バイト数で指定します。

- **return** -- 書き込んだバイト数を返します。書き込みに失敗した場合は
             errno を負にした整数を返します。例外は発生しません。

- **raise** `ArgumentError` -- offset と length の合計がバッファの大きさを
             超える場合に発生します。

```ruby
buf = IO::Buffer.for("Ruby!")
File.open("test.txt", "w") do |io|
  p buf.write(io, 5) # => 5
end
p File.read("test.txt") # => "Ruby!"
```

- **SEE** [IO::Buffer#pwrite](../../../method/IO=3a=3aBuffer/i/pwrite.md), [IO::Buffer#read](../../../method/IO=3a=3aBuffer/i/read.md)
