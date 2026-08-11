# Open3?.pipeline_w

### module_function def pipeline_w(*cmds) -> [IO, [Thread]]
### module_function def pipeline_w(*cmds) {|first_stdin, wait_thrs| ... } -> ()

指定したコマンドのリストをパイプで繋いで順番に実行します。最初のコマンドの標準入力に書き込む事ができます。

- **param** `cmds` -- 実行するコマンドのリストを指定します。それぞれのコマンドは以下のように [String](../../../class/String.md) か [Array](../../../class/Array.md) で指定します。
            commandline にはコマンド全体(例. "nroff -man")を表す
            [String](../../../class/String.md) を指定します。
            options には [Hash](../../../class/Hash.md) で指定します。
            env には環境変数を [Hash](../../../class/Hash.md) で指定します。
            cmdname にはコマンド名を表す [String](../../../class/String.md) を指定します。
            1、2、3 は shell 経由で実行されます。

1. commandline
2. [commandline, options]
3. [env, commandline, options]
4. [env, cmdname, arg1, arg2, ..., options]
5. [env, [cmdname, argv0], arg1, ..., options]

- **return** -- ブロックを指定した場合はブロックの最後に評価された値を返します。
        ブロックを指定しなかった場合は最初に実行するコマンドの標準入力、実行したプロセスを待つためのスレッドの配列を配列で返します。

```ruby title="例"
require "open3"

Open3.pipeline_w("bzip2 -c", :out=>"/tmp/hello.bz2") {|w, ts|
  w.puts "hello"
}
```

- **SEE** [Open3?.popen3](../../../method/Open3/m/popen3.md)
