# IO.foreach

### def IO.foreach(path, rs = $/, chomp: false, **opts) {|line| ... }    -> nil
### def IO.foreach(path, rs = $/, chomp: false, **opts)                  -> Enumerator

path で指定されたファイルの各行を引数としてブロックを繰り返し実行します。
path のオープンに成功すれば nil を返します。

ブロックが与えられなかった場合は、path で指定されたファイルの各行を繰り返す
[Enumerator](../../../class/Enumerator.md) オブジェクトを生成して返します。

テキスト読み込みメソッドとして動作します。

path が空ファイルの場合、何もせずに nil を返します。
Ruby 3.x までは path の先頭が "|" のとき "|" に続くコマンドの出力を読み取れましたが、この機能は Ruby 4.0 で削除され、"|" で始まる path も通常のファイル名として扱われます。

- **param** `path` -- ファイル名を表す文字列を指定します。

- **param** `rs` -- 行の区切りを文字列で指定します。rs に nil を指定すると行区切りなしとみなします。
          空文字列 "" を指定すると連続する改行を行の区切りとみなします(パラグラフモード)。

- **param** `chomp` -- true を指定すると各行の末尾から "\n", "\r", または "\r\n" を取り除きます。

- **param** `opts` -- ファイル path を open する時に使われるオプションをキーワード引数で指定します。
          `:encoding` で読み込んだ行のエンコーディングを、
          `:mode` で [IO.open](../../../method/IO/s/open.md) のモード文字列を指定できます。
          これらの他、[IO.new](../../../method/IO/s/new.md) のオプション引数(`:external_encoding` など)が指定できます。

- **raise** `Errno::EXXX` -- path のオープンに失敗した場合、発生します。

```ruby title="例:rs 指定なし"
IO.write("testfile", "line1\nline2,\nline3\n")
p IO.foreach("testfile")  # => #<Enumerator: IO:foreach("testfile")>
IO.foreach("testfile") { |x| print "GOT ", x }
# => GOT line1
# GOT line2,
# GOT line3
```

```ruby title="例:カンマを行の区切りに指定（ rs = \",\" ）"
IO.write("testfile", "line1,line2,line3")
IO.foreach("testfile", ",") { |x| puts "GOT #{x}" }
# => GOT line1,
# GOT line2,
# GOT line3
```

```ruby title="例: 各行の末尾から \"\\n\", \"\\r\", または \"\\r\\n\" を取り除く（chomp = true）"
IO.write("testfile", "line1\nline2,\nline3\n")
IO.foreach("testfile", chomp: true) { |x| print "GOT ", x }
# => GOT line1GOT line2,GOT line3
```

```ruby title="例: エンコーディングを指定"
IO.write("testfile", "line1\nline2,\nline3\n")
IO.foreach("testfile", encoding: "UTF-8") { |x| p x.encoding }
# => #<Encoding:UTF-8>
# #<Encoding:UTF-8>
# #<Encoding:UTF-8>
```

- **SEE** [m:$/]
