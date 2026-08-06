# IO::Buffer.map

### def IO::Buffer.map(file, size = nil, offset = 0, flags = 0) -> IO::Buffer

ファイルをメモリにマップしたバッファを作成して返します。

既定では書き込み可能かつ共有(shared)のマップになるため、file は書き込み可能な状態で開いておく必要があります。読み込み専用で開いたファイルをマップするには、flags に [IO::Buffer::READONLY](../../../method/IO=3a=3aBuffer/c/READONLY.md) を指定します。
[IO::Buffer::PRIVATE](../../../method/IO=3a=3aBuffer/c/PRIVATE.md) を指定するとコピーオンライトのマップになり、バッファへの変更はファイルにも他のプロセスにも反映されません。

- **param** `file` -- マップする [File](../../../class/File.md) を指定します。

- **param** `size` -- マップするバイト数を指定します。省略するとファイル全体を
             マップします。0 を指定した場合と空のファイルを指定した場合は
             エラーになります。

- **param** `offset` -- マップを開始する位置をファイルの先頭からのバイト数で
             指定します。指定できる値はシステム依存で、多くの環境では
             ページサイズの倍数である必要があります。

- **param** `flags` -- [IO::Buffer::READONLY](../../../method/IO=3a=3aBuffer/c/READONLY.md) や [IO::Buffer::PRIVATE](../../../method/IO=3a=3aBuffer/c/PRIVATE.md) を
             指定します。

```ruby title="例: 読み込み専用でマップする"
File.write("test.txt", "hello world")

buffer = IO::Buffer.map(File.open("test.txt"), nil, 0, IO::Buffer::READONLY)
p buffer.get_string # => "hello world"
p buffer.mapped?    # => true
p buffer.readonly?  # => true
```

```ruby title="例: 書き込み可能なマップ"
File.write("test.txt", "hello world")

buffer = IO::Buffer.map(File.open("test.txt", "r+"))
buffer.set_string("HELLO")
p File.read("test.txt") # => "HELLO world"
```

- **SEE** [IO::Buffer.new](../../../method/IO=3a=3aBuffer/s/new.md), [IO::Buffer.for](../../../method/IO=3a=3aBuffer/s/for.md)
