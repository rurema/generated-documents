# Kernel?.gets

### module_function def gets(rs = $/) -> String | nil

[ARGF](../../../class/ARGF.md)から一行読み込んで、それを返します。
行の区切りは引数 rs で指定した文字列になります。

rs に nil を指定すると行区切りなしとみなしてファイルの内容をすべて読み込みます。ARGVに複数のファイル名が存在する場合は1度に1ファイルずつ読み込みます。
空文字列 "" を指定すると連続する改行を行の区切りとみなします
(パラグラフモード)。

読み込んだ文字列は組み込み変数 [m:$_] にもセットされます。

- **param** `rs` -- 行の区切りとなる文字列です。
- **return** -- ファイルの終り(EOF)に到達した時、 nil を返します。
- **raise** `Errno::EXXX` -- 読み込みに失敗した場合に発生します。

```ruby title="main.rb"
ARGV << 'b.txt' << 'c.txt'
p gets # => "hello\n"
p gets(nil) # => "it\ncommon\n"
p gets("") # => "ARGF\n\n"
p gets('、') # => "# スクリプトに指定した引数 (Object::ARGV を参照) をファイル名と\n# みなして、"
p gets # => "それらのファイルを連結した 1 つの仮想ファイルを表すオブジェクトです。\n"
p gets # => nil
p readline # end of file reached (EOFError)
```

```ruby title="b.txt"
hello
it
common
```

```ruby title="c.txt"
ARGF

# スクリプトに指定した引数 (Object::ARGV を参照) をファイル名と
# みなして、それらのファイルを連結した 1 つの仮想ファイルを表すオブジェクトです。
```

- **SEE** [m:$/],[ARGF](../../../class/ARGF.md),[Kernel?.readlines](../../../method/Kernel/m/readlines.md),[Kernel?.readline](../../../method/Kernel/m/readline.md)
