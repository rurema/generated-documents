# StringIO.new

### def StringIO.new(string = '', mode = 'r+')                 -> StringIO

StringIO オブジェクトを生成して返します。

与えられた string がフリーズされている場合には、mode はデフォルトでは読み取りのみに設定されます。

- **param** `string` -- 生成される StringIO のデータを文字列で指定します。
              この文字列はバッファとして使われます。[StringIO#write](../../../method/StringIO/i/write.md) などによって、
              string 自身も書き換えられます。

- **param** `mode` -- [Kernel?.open](../../../method/Kernel/m/open.md) 同様文字列か整数で指定します。

- **raise** `Errno::EACCES` -- string がフリーズされていて、mode が書き込み可能に設定されている場合に発生します。

```ruby title="例"
require 'stringio'

s = "foo"
io = StringIO.new(s)
p io.getc       # => 102
p io.pos        # => 1
p io.size       # => 3
io << "bar"   
p io.size       # => 4
p s             # => "fbar"
io.rewind
p io.gets       # => "fbar"
```

- **SEE** [StringIO.open](../../../method/StringIO/s/open.md)
