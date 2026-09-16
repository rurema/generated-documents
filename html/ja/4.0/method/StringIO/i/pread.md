# StringIO#pread

### def pread(maxlen, offset) -> String
### def pread(maxlen, offset, outbuf) -> String

自身の現在の読み込み位置を変更せずに、offset から maxlen バイト読み込んで返します。

[IO#pread](../../../method/IO/i/pread.md) と違いシステムコールを使わないので、常にアトミックです。

- **param** `maxlen` -- 読み込むバイト数を指定します。
- **param** `offset` -- 読み込み開始位置を先頭からのオフセットで指定します。
- **param** `outbuf` -- 読み込んだデータを格納する String を指定します。

- **raise** `EOFError` -- offset が末尾以降を指している場合に発生します。
- **raise** `IOError` -- 自身が読み込み用にオープンされていない場合に発生します。

```ruby title="例"
require 'stringio'

s = StringIO.new("hello world")
p s.pread(5, 6)          # => "world"
buf = String.new
p s.pread(5, 0, buf)      # => "hello"
p buf                     # => "hello"
```

- **SEE** [IO#pread](../../../method/IO/i/pread.md)
