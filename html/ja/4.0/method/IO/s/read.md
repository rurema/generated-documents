# IO.read

### def IO.read(path, **opt)     -> String | nil
### def IO.read(path, length = nil, **opt)     -> String | nil
### def IO.read(path, length = nil, offset = 0, **opt)     -> String | nil

path で指定されたファイルを offset 位置から
length バイト分読み込んで返します。

既に EOF に達している場合は nil を返します。ただし、length に nil か 0 が指定されている場合は、空文字列 "" を返します。例えば、IO.read(空ファイル) は "" を返します。

引数 length が指定された場合はバイナリ読み込みメソッド、そうでない場合はテキスト読み込みメソッドとして動作します。

Ruby 3.x までは path の先頭が "|" のとき "|" に続くコマンドの出力を読み取れましたが
(この特別扱いはレシーバが [IO](../../../class/IO.md) の場合のみ有効で、`File.read` では無効でした)、この機能は Ruby 4.0 で削除されました。
現在は [IO.read](../../../method/IO/s/read.md)・`File.read` のいずれでも、"|" で始まる path は通常のファイル名として扱われます(該当するファイルが無ければ [Errno::ENOENT](../../../class/Errno=3a=3aENOENT.md) が発生します)。

```ruby
IO.read("|echo hello")    # ~> Errno::ENOENT
File.read("|echo hello")  # ~> Errno::ENOENT
```


- **param** `path` -- ファイル名を表す文字列を指定します。

- **param** `length` -- 読み込む長さを整数で指定します。nil であるか省略した場合には、EOF まで読み込みます。

- **param** `offset` -- 読み込みを始めるオフセットを整数で指定します。

- **param** `opt` -- ファイル path を open する時に使われるオプションをキーワード引数で指定します。

- **raise** `Errno::EXXX` -- path のオープン、offset 位置への設定、ファイルの読み込みに失敗した場合に発生します。

- **raise** `ArgumentError` -- length が負の場合に発生します。

キーワード引数で有効なキーと値は以下のとおりです。

- **`:encoding`**:
  
  読み込んだ文字列のエンコーディングを指定します。
  読み込む長さを指定した場合はこれは無視されます。

- **`:mode`**:
  
  [IO.open](../../../method/IO/s/open.md) のモードを指定します。
  "r" で始まる文字列である必要があります。

- **`:open_args`**:
  
  [IO.open](../../../method/IO/s/open.md) に渡される引数を配列で指定します。

これらの他、 :external_encoding など
[IO.open](../../../method/IO/s/open.md) のオプション引数が指定できます。

- **SEE** [IO.binread](../../../method/IO/s/binread.md)

```ruby title="例"
p IO.read(empty_file)           # => ""
p IO.read(empty_file, 1)        # => nil
p IO.read(one_byte_file, 0, 10) # => ""
p IO.read(one_byte_file, nil, 10) # => "" 
p IO.read(one_byte_file, 1, 10) # => nil
```
