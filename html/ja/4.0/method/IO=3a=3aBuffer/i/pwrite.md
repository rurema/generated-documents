# IO::Buffer#pwrite

### def pwrite(io, from, length = nil, offset = 0) -> Integer

バッファの内容を io の指定した位置に書き込みます。

[IO::Buffer#write](../../../method/IO=3a=3aBuffer/i/write.md) と異なり、書き込む位置を io の中で直接指定します。
io の現在の位置は変わりません。

- **param** `io` -- 書き込み先の [IO](../../../class/IO.md) を指定します。

- **param** `from` -- 書き込みを開始する位置を、io の先頭からのバイト数で
             指定します。

- **param** `length` -- 書き込む最小のバイト数を整数で指定します。
             省略するか nil を指定した場合は、バッファの大きさから offset を引いた値、つまりバッファの残り全体になります。
             0 を指定した場合は [man:pwrite(2)] をちょうど 1 回呼びます。

- **param** `offset` -- 書き込む内容の開始位置を、バッファの先頭からの
             バイト数で指定します。

- **return** -- 書き込んだバイト数を返します。書き込みに失敗した場合は
             errno を負にした整数を返します。例外は発生しません。

- **raise** `ArgumentError` -- offset と length の合計がバッファの大きさを超える場合に発生します。


```ruby
File.write("test.txt", "Hello World")

buf = IO::Buffer.for("RUBY!")
File.open("test.txt", "r+") do |io|
  p buf.pwrite(io, 6, 5) # => 5
end
p File.read("test.txt")  # => "Hello RUBY!"
```


- **SEE** [IO::Buffer#write](../../../method/IO=3a=3aBuffer/i/write.md), [IO::Buffer#pread](../../../method/IO=3a=3aBuffer/i/pread.md), [man:pwrite(2)]
