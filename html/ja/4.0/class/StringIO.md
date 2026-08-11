# class StringIO < Object

文字列に [IO](../class/IO.md) と同じインタフェースを持たせるためのクラスです。

```ruby title="例"
require "stringio"
sio = StringIO.new("hoge", 'r+')
p sio.read                 # => "hoge"
sio.rewind
p sio.read(1)              # => "h"
sio.write("OGE")
sio.rewind
p sio.read                 # => "hOGE"
```

### 例外

StringIO オブジェクトは大抵の場合 IO オブジェクトと同じ例外を発生させます。
例えば次の例では write は IOError を発生させます。

```ruby title="例"
require "stringio"
sio = StringIO.new("hoge")
sio.close
sio.write("a")
# => in 'StringIO#write': not opened for writing (IOError)
```

## Class Methods

- [new](../method/StringIO/s/new.md)
- [open](../method/StringIO/s/open.md)

## Instance Methods

- [<<](../method/StringIO/i/=3c=3c.md)
- [binmode](../method/StringIO/i/binmode.md)
- [close](../method/StringIO/i/close.md)
- [close_read](../method/StringIO/i/close_read.md)
- [close_write](../method/StringIO/i/close_write.md)
- [closed?](../method/StringIO/i/closed=3f.md)
- [closed_read?](../method/StringIO/i/closed_read=3f.md)
- [closed_write?](../method/StringIO/i/closed_write=3f.md)
- [each](../method/StringIO/i/each.md)
- [each_line](../method/StringIO/i/each_line.md)
- [each_byte](../method/StringIO/i/each_byte.md)
- [each_char](../method/StringIO/i/each_char.md)
- [each_codepoint](../method/StringIO/i/each_codepoint.md)
- [eof](../method/StringIO/i/eof.md)
- [eof?](../method/StringIO/i/eof=3f.md)
- [external_encoding](../method/StringIO/i/external_encoding.md)
- [fcntl](../method/StringIO/i/fcntl.md)
- [fileno](../method/StringIO/i/fileno.md)
- [flush](../method/StringIO/i/flush.md)
- [fsync](../method/StringIO/i/fsync.md)
- [getbyte](../method/StringIO/i/getbyte.md)
- [getc](../method/StringIO/i/getc.md)
- [gets](../method/StringIO/i/gets.md)
- [internal_encoding](../method/StringIO/i/internal_encoding.md)
- [isatty](../method/StringIO/i/isatty.md)
- [length](../method/StringIO/i/length.md)
- [size](../method/StringIO/i/size.md)
- [lineno](../method/StringIO/i/lineno.md)
- [lineno=](../method/StringIO/i/lineno=3d.md)
- [pid](../method/StringIO/i/pid.md)
- [pos](../method/StringIO/i/pos.md)
- [tell](../method/StringIO/i/tell.md)
- [pos=](../method/StringIO/i/pos=3d.md)
- [print](../method/StringIO/i/print.md)
- [printf](../method/StringIO/i/printf.md)
- [putc](../method/StringIO/i/putc.md)
- [puts](../method/StringIO/i/puts.md)
- [read](../method/StringIO/i/read.md)
- [read_nonblock](../method/StringIO/i/read_nonblock.md)
- [readbyte](../method/StringIO/i/readbyte.md)
- [readchar](../method/StringIO/i/readchar.md)
- [readline](../method/StringIO/i/readline.md)
- [readlines](../method/StringIO/i/readlines.md)
- [readpartial](../method/StringIO/i/readpartial.md)
- [sysread](../method/StringIO/i/sysread.md)
- [reopen](../method/StringIO/i/reopen.md)
- [rewind](../method/StringIO/i/rewind.md)
- [seek](../method/StringIO/i/seek.md)
- [set_encoding](../method/StringIO/i/set_encoding.md)
- [string](../method/StringIO/i/string.md)
- [string=](../method/StringIO/i/string=3d.md)
- [sync](../method/StringIO/i/sync.md)
- [sync=](../method/StringIO/i/sync=3d.md)
- [syswrite](../method/StringIO/i/syswrite.md)
- [write_nonblock](../method/StringIO/i/write_nonblock.md)
- [truncate](../method/StringIO/i/truncate.md)
- [tty?](../method/StringIO/i/tty=3f.md)
- [ungetbyte](../method/StringIO/i/ungetbyte.md)
- [ungetc](../method/StringIO/i/ungetc.md)
- [write](../method/StringIO/i/write.md)
