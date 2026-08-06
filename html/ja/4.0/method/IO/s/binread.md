# IO.binread

### def IO.binread(path, length = nil, offset = 0)     -> String | nil

path で指定したファイルを open し、offset の所まで seek し、
length バイト読み込みます。

Ruby 3.x までは path の先頭が "|" のとき "|" に続くコマンドの出力を読み取れましたが
([IO.read](../../../method/IO/s/read.md) と同様、レシーバが [IO](../../../class/IO.md) の場合のみ)、この機能は Ruby 4.0 で削除され、
[IO.binread](../../../method/IO/s/binread.md)・`File.binread` のいずれでも "|" で始まる path は通常のファイル名として扱われます。

length を省略するとファイルの末尾まで読み込みます。

ファイルを開くときの mode は "rb:ASCII-8BIT" です。

```ruby title="例"
IO.write("testfile", "This is line one\nThis is line two\nThis is line three\nAnd so on...\n")
p IO.binread("testfile")         # => "This is line one\nThis is line two\nThis is line three\nAnd so on...\n"
p IO.binread("testfile", 20)     # => "This is line one\nThi"
p IO.binread("testfile", 20, 10) # => "ne one\nThis is line "
```

- **SEE** [IO.read](../../../method/IO/s/read.md)
