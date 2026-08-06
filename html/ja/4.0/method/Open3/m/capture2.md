# Open3?.capture2

### module_function def capture2(*cmd) -> [String, Process::Status]

cmdで指定されたコマンドを実行し、そのプロセスの標準出力とプロセスの終了ステータスを表すオブジェクトを返します。

- **param** `cmd` -- 実行するコマンドを指定します。

- **return** -- 実行したコマンドの標準出力と終了ステータスを表すオブジェクトを
        配列で返します。

指定された引数はopts[:stdin_data]とopts[:binmode]以外は全て
[Open3?.popen3](../../../method/Open3/m/popen3.md)に渡されます。opts[:stdin_data]は実行するコマンドの標準入力に渡されます。opts[:binmode]を真に指定されると内部で使用されるパイプをバイナリモードに指定します。opts[:stdin_data]にはreadpartialに応答するIOのようなオブジェクト([IO](../../../class/IO.md)や[StringIO](../../../class/StringIO.md)など)も指定でき、その場合は内容が[IO.copy_stream](../../../method/IO/s/copy_stream.md)でコマンドの標準入力に渡されます。

```ruby title="例"
require "open3"

# factorコマンドで与えられた数値(42)を素因数分解する。
o, s = Open3.capture2("factor", :stdin_data=>"42")
p o #=> "42: 2 3 7\n"
```

[Open3?.popen3](../../../method/Open3/m/popen3.md)と同様に引数に環境変数とオプションを指定してコマンドを実行する事ができます。

- **SEE** [Open3?.popen3](../../../method/Open3/m/popen3.md)
