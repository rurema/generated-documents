# IO.pipe

### def IO.pipe                    -> [IO]
### def IO.pipe(ext_enc)           -> [IO]
### def IO.pipe(enc_str, **opts)           -> [IO]
### def IO.pipe(ext_enc, int_enc, **opts)  -> [IO]
### def IO.pipe{|read_io, write_io| ... } -> object
### def IO.pipe(ext_enc){|read_io, write_io| ... } -> object
### def IO.pipe(enc_str, **opts){|read_io, write_io| ... }           -> object
### def IO.pipe(ext_enc, int_enc, **opts){|read_io, write_io| ... }  -> object

[man:pipe(2)] を実行して、相互につながった2つの
[IO](../../../class/IO.md) オブジェクトを要素とする配列を返します。

戻り値の配列は最初の要素が読み込み側で、次の要素が書き込み側です。

ブロックが渡された場合は、そのブロックに2つの IO オブジェクトが渡され、ブロックの返り値がこのメソッドの返り値となります。
ブロック終了時に IO オブジェクトがもし close されていないならば
close します(close されていてるオブジェクトはそのままです)。

得られる2つの IO オブジェクトのエンコーディングを引数で指定できます。

- **param** `enc_str` -- 読み込み側の外部エンコーディングを文字列で指定します。
               文字列がコロンを挟んだ二つのエンコーディング名 "A:B" である場合最初のものが外部エンコーディング、次が内部エンコーディングを意味します。

- **param** `ext_enc` -- 読み込み側の外部エンコーディングを Encoding オブジェクトで指定します。

- **param** `int_enc` -- 読み込み側の内部エンコーディングを Encoding オブジェクトで指定します。
- **param** `opts` -- エンコーディングなどを設定するキーワード引数(see [IO.new](../../../method/IO/s/new.md))

- **raise** `Errno::EXXX` -- IO オブジェクトの作成に失敗した場合に発生します。

```ruby
r, w = IO.pipe
p [r, w]            # => [#<IO:0x401b90f8>, #<IO:0x401b7718>]
Thread.new do
  w.puts "foo"
  w.close
end
p r.gets           # => "foo\n"
```
