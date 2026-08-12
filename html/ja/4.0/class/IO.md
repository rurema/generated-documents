# class IO < Object

基本的な入出力機能のためのクラスです。


File::Constants は、[File](../class/File.md) から IO へ移動しました。

### 多言語化と IO のエンコーディング {#m17n}

IO オブジェクトはエンコーディングを持ちます。
エンコーディングの影響を受けるメソッドと受けないメソッドがあります。

影響を受けるメソッドでは、IO のエンコーディングに従い読み込まれた文字列のエンコーディングが決定されます。
また IO のエンコーディングを適切に設定することにより、読み込み時・書き込み時に文字列のエンコーディングを変換させることもできます。

#### エンコーディングの影響を受けるメソッドと受けないメソッド

IO の読み込みメソッドは2種類存在します。
テキスト読み込みメソッドとバイナリ読み込みメソッドです。

テキスト読み込みメソッドは IO のエンコーディングの影響をうけます。
詳しくは「[io_encoding](#io_encoding)」を参照して下さい。
以下がテキスト読み込みメソッドです。

- [IO.foreach](../method/IO/s/foreach.md)
- [IO.readlines](../method/IO/s/readlines.md)
- [IO#each_line](../method/IO/i/each_line.md)
- [IO#gets](../method/IO/i/gets.md)
- [IO#getc](../method/IO/i/getc.md)
- [IO#ungetc](../method/IO/i/ungetc.md)
- [IO#read](../method/IO/i/read.md)
- [IO#readchar](../method/IO/i/readchar.md)
- [IO#readline](../method/IO/i/readline.md)
- [IO#readlines](../method/IO/i/readlines.md)

バイナリ読み込みメソッドは IO のエンコーディングの影響を受けません。
返す文字列のエンコーディングは常に ASCII-8BIT になります。
以下がバイナリ読み込みメソッドです。

- [IO#read](../method/IO/i/read.md)(size)
- [IO#read_nonblock](../method/IO/i/read_nonblock.md)
- [IO#readpartial](../method/IO/i/readpartial.md)
- [IO#sysread](../method/IO/i/sysread.md)

また書き込みメソッド [IO#write](../method/IO/i/write.md) も IO のエンコーディングの影響を受けます。
IO のすべての書き込みメソッドは内部で [IO#write](../method/IO/i/write.md) を呼びますので、書き込みメソッドはすべて IO のエンコーディングの影響を受けます。

シーク関連のメソッドはエンコーディングの影響を受けません。
常に1バイトを単位として動作します。

```ruby title="例"
f = File.open('t.txt', 'r+:euc-jp')
p f.getc.encoding                             # => Encoding::EUC_JP
p f.read(1).encoding                          # => Encoding::ASCII_8BIT 
```

#### IO のエンコーディングとエンコーディングの変換 {#io_encoding}

IO オブジェクトは外部エンコーディングと内部エンコーディングを持ちます。
外部エンコーディングとは IO が表すファイルなどの文字エンコーディングです。
内部エンコーディングとは IO から読み込まれた文字列、あるいは IO の書き込みメソッドへ渡す文字列の文字エンコーディングです。

以下の三通りがあります。

- **IO のエンコーディングが指定されていない場合**:

  IO からテキスト読み込みメソッドによって読み込まれた文字列のエンコーディングは [Encoding.default_external](../method/Encoding/s/default_external.md)
  に設定されます。このとき実際の文字エンコーディングは検査されず、変換もされません。

- **外部エンコーディングのみが指定されている場合**:

  IO からテキスト読み込みメソッドによって読み込まれた文字列のエンコーディングは外部エンコーディング
  に設定されます。このとき実際の文字エンコーディングは検査されず、変換もされません。

  IO へ書き込まれる文字列は外部エンコーディングへと変換されます。
  外部エンコーディングへの変換方法が分からない場合は例外が発生します。

- **外部エンコーディングと内部エンコーディング(あるいは default_internal)が指定されている場合**:
  IO からテキスト読み込みメソッドによって読み込まれた文字列は、外部エンコーディングから内部エンコーディング(あるいは default_internal)へと変換されます。
  指定された文字エンコーディングと実際の文字エンコーディングが違っていた場合、例外が発生します。
  内部エンコーディングと  [Encoding.default_internal](../method/Encoding/s/default_internal.md) が両方とも指定されている場合は、内部エンコーディングが優先されます。

  IO へ書き込まれる文字列は外部エンコーディングへと変換されます。
  外部エンコーディングへの変換方法が分からない場合は例外が発生します。

IO に対してエンコーディングを指定する方法には、生成時に [IO.open](../method/IO/s/open.md) や [File.open](../method/File/s/open.md)
に渡すモードとともに指定するものと生成後に [IO#set_encoding](../method/IO/i/set_encoding.md) を使って指定するものの二通りがあります。詳しくはそれぞれのメソッドの項を参照して下さい。通常は前者の方法を使います。

```ruby title="例1"
f = File.open('file1')
p f.getc.encoding        # => Encoding::EUC_JP
```

```ruby title="例2"
f = File.open('t.txt', 'w+:shift_jis:euc-jp')
f.write "\xB4\xC1\xBB\xFA"            # 文字列 "漢字" の EUC-JP リテラル
f.rewind
s = f.read(4)
puts s.dump                           # => "\x8A\xBF\x8E\x9A" 
                                      # エンコーディングがSJISへ変換されていることが分かる。
```

##### まとめ

以上をまとめると以下の表のようになります。[Encoding.default_external](../method/Encoding/s/default_external.md) は常に設定されているので、省略してあります。

読み込んだ文字列のエンコーディング

| | バイナリ読み込みメソッド | テキスト読み込みメソッド |
|--------------------------|------------|------------------- |
| 指定無し                  | ASCII-8BIT | default_external |
| default_internal のみ    | ASCII-8BIT | default_internal |
| 外部エンコーディングのみ    | ASCII-8BIT | 外部エンコーディング |
| 内部エンコーディング指定あり | ASCII-8BIT | 内部エンコーディング |
| 内部エンコーディングと default_internal 両方 | ASCII-8BIT | 内部エンコーディング |

エンコーディングの変換

| | バイナリ読み込みメソッド | テキスト読み込みメソッド | 書き込みメソッド |
|------------------------|--------|---------|---------|
| 指定無し                | 変換なし | 変換なし | 変換なし |
| 外部エンコーディングのみ   | 変換なし | 変換なし | 変換あり |
| default_internal のみ  | 変換なし | 変換あり | 変換あり |
| 内部エンコーディングのみ   | 変換なし | 変換あり | 変換あり |
| 外部エンコーディングと内部エンコーディング  | 変換なし | 変換あり | 変換あり |
| 外部エンコーディングと default_internal | 変換なし | 変換あり | 変換あり |

#### デフォルトの外部エンコーディングの指定

[Encoding.default_external](../method/Encoding/s/default_external.md) はコマンドオプション -E で指定します。
-E が指定されなかった場合は次のような優先順位で決定されます。

```text
-E (最優先) > -K > locale
```

#### ファイル名のエンコーディング

ファイル名の文字エンコーディングはプラットフォームに依存します。
ファイル名の文字エンコーディングが固定されているプラットフォーム(Win, Mac)では、エンコーディングは暗黙に変換されます(予定)。UNIX では変換されずそのままシステムコールに渡されます。

[Dir.glob](../method/Dir/s/glob.md), [Dir.foreach](../method/Dir/s/foreach.md) などが返すファイル名のエンコーディングも同様にプラットフォーム依存です。
UNIX では ASCII-8BIT です。

#### バイナリモード {#io_binmode}

Windows の IO にはテキストモードとバイナリモードという2種類のモードが存在します。
これらのモードは上で説明した IO のエンコーディングとは独立です。改行の変換にしか影響しません。

### EOF での読み込みメソッドの振る舞いの違い

空ファイルや EOF での各読み込みメソッドの振る舞いは以下のとおりです。
ただし、length を指定できるメソッドに関しては、length に nil または 0 を指定した場合、
EOF であっても常に空文字列 "" を返します。

| メソッド                 | 空のファイルに対して |
|-------------------------|-------------------|
| IO.read(空ファイル)         | `""` |
| IO.read(空ファイル, length)  | `nil` |
| IO.readlines(空ファイル)    | `[]` |
| IO.foreach(空ファイル)      | 何もしない |

|メソッド            | 既にEOFだったら|
|------------------|-----------|
| IO#each_byte     | 何もしない |
| IO#getc          | `nil` |
| IO#gets          | `nil` |
| IO#read()        | `""` |
| IO#read(length)  | `nil` |
| IO#read_nonblock | `EOFError` |
| IO#readchar      | `EOFError` |
| IO#readline      | `EOFError` |
| IO#readlines     | `[]` |
| IO#readpartial   | `EOFError` |
| IO#sysread       | `EOFError` |

## Class Methods

- [binread](../method/IO/s/binread.md)
- [binwrite](../method/IO/s/binwrite.md)
- [console](../method/IO/s/console.md)
- [console_size](../method/IO/s/console_size.md)
- [copy_stream](../method/IO/s/copy_stream.md)
- [default_console_size](../method/IO/s/default_console_size.md)
- [for_fd](../method/IO/s/for_fd.md)
- [new](../method/IO/s/new.md)
- [open](../method/IO/s/open.md)
- [foreach](../method/IO/s/foreach.md)
- [pipe](../method/IO/s/pipe.md)
- [popen](../method/IO/s/popen.md)
- [read](../method/IO/s/read.md)
- [readlines](../method/IO/s/readlines.md)
- [select](../method/IO/s/select.md)
- [sysopen](../method/IO/s/sysopen.md)
- [try_convert](../method/IO/s/try_convert.md)
- [write](../method/IO/s/write.md)

## Instance Methods

- [<<](../method/IO/i/=3c=3c.md)
- [advise](../method/IO/i/advise.md)
- [autoclose=](../method/IO/i/autoclose=3d.md)
- [autoclose?](../method/IO/i/autoclose=3f.md)
- [binmode](../method/IO/i/binmode.md)
- [binmode?](../method/IO/i/binmode=3f.md)
- [clone](../method/IO/i/clone.md)
- [dup](../method/IO/i/dup.md)
- [close](../method/IO/i/close.md)
- [close_on_exec=](../method/IO/i/close_on_exec=3d.md)
- [close_on_exec?](../method/IO/i/close_on_exec=3f.md)
- [close_read](../method/IO/i/close_read.md)
- [close_write](../method/IO/i/close_write.md)
- [closed?](../method/IO/i/closed=3f.md)
- [cooked](../method/IO/i/cooked.md)
- [cooked!](../method/IO/i/cooked=21.md)
- [each](../method/IO/i/each.md)
- [each_line](../method/IO/i/each_line.md)
- [each_byte](../method/IO/i/each_byte.md)
- [each_char](../method/IO/i/each_char.md)
- [each_codepoint](../method/IO/i/each_codepoint.md)
- [echo=](../method/IO/i/echo=3d.md)
- [echo?](../method/IO/i/echo=3f.md)
- [eof](../method/IO/i/eof.md)
- [eof?](../method/IO/i/eof=3f.md)
- [expect](../method/IO/i/expect.md)
- [external_encoding](../method/IO/i/external_encoding.md)
- [fcntl](../method/IO/i/fcntl.md)
- [fdatasync](../method/IO/i/fdatasync.md)
- [fileno](../method/IO/i/fileno.md)
- [to_i](../method/IO/i/to_i.md)
- [flush](../method/IO/i/flush.md)
- [fsync](../method/IO/i/fsync.md)
- [getbyte](../method/IO/i/getbyte.md)
- [getc](../method/IO/i/getc.md)
- [getch](../method/IO/i/getch.md)
- [gets](../method/IO/i/gets.md)
- [iflush](../method/IO/i/iflush.md)
- [internal_encoding](../method/IO/i/internal_encoding.md)
- [ioctl](../method/IO/i/ioctl.md)
- [ioflush](../method/IO/i/ioflush.md)
- [isatty](../method/IO/i/isatty.md)
- [tty?](../method/IO/i/tty=3f.md)
- [lineno](../method/IO/i/lineno.md)
- [lineno=](../method/IO/i/lineno=3d.md)
- [noecho](../method/IO/i/noecho.md)
- [nonblock](../method/IO/i/nonblock.md)
- [nonblock=](../method/IO/i/nonblock=3d.md)
- [nonblock?](../method/IO/i/nonblock=3f.md)
- [nread](../method/IO/i/nread.md)
- [oflush](../method/IO/i/oflush.md)
- [path](../method/IO/i/path.md)
- [to_path](../method/IO/i/to_path.md)
- [pathconf](../method/IO/i/pathconf.md)
- [pid](../method/IO/i/pid.md)
- [pos](../method/IO/i/pos.md)
- [tell](../method/IO/i/tell.md)
- [pos=](../method/IO/i/pos=3d.md)
- [pread](../method/IO/i/pread.md)
- [print](../method/IO/i/print.md)
- [printf](../method/IO/i/printf.md)
- [putc](../method/IO/i/putc.md)
- [puts](../method/IO/i/puts.md)
- [pwrite](../method/IO/i/pwrite.md)
- [raw](../method/IO/i/raw.md)
- [raw!](../method/IO/i/raw=21.md)
- [read](../method/IO/i/read.md)
- [read_nonblock](../method/IO/i/read_nonblock.md)
- [readbyte](../method/IO/i/readbyte.md)
- [readchar](../method/IO/i/readchar.md)
- [readline](../method/IO/i/readline.md)
- [readlines](../method/IO/i/readlines.md)
- [readpartial](../method/IO/i/readpartial.md)
- [ready?](../method/IO/i/ready=3f.md)
- [reopen](../method/IO/i/reopen.md)
- [rewind](../method/IO/i/rewind.md)
- [seek](../method/IO/i/seek.md)
- [set_encoding](../method/IO/i/set_encoding.md)
- [set_encoding_by_bom](../method/IO/i/set_encoding_by_bom.md)
- [stat](../method/IO/i/stat.md)
- [sync](../method/IO/i/sync.md)
- [sync=](../method/IO/i/sync=3d.md)
- [sysread](../method/IO/i/sysread.md)
- [sysseek](../method/IO/i/sysseek.md)
- [syswrite](../method/IO/i/syswrite.md)
- [timeout](../method/IO/i/timeout.md)
- [timeout=](../method/IO/i/timeout=3d.md)
- [to_io](../method/IO/i/to_io.md)
- [ungetbyte](../method/IO/i/ungetbyte.md)
- [ungetc](../method/IO/i/ungetc.md)
- [wait](../method/IO/i/wait.md)
- [wait_readable](../method/IO/i/wait_readable.md)
- [wait_priority](../method/IO/i/wait_priority.md)
- [wait_writable](../method/IO/i/wait_writable.md)
- [winsize](../method/IO/i/winsize.md)
- [winsize=](../method/IO/i/winsize=3d.md)
- [write](../method/IO/i/write.md)
- [write_nonblock](../method/IO/i/write_nonblock.md)

## Constants

- [SEEK_CUR](../method/IO/c/SEEK_CUR.md)
- [SEEK_DATA](../method/IO/c/SEEK_DATA.md)
- [SEEK_END](../method/IO/c/SEEK_END.md)
- [SEEK_HOLE](../method/IO/c/SEEK_HOLE.md)
- [SEEK_SET](../method/IO/c/SEEK_SET.md)
