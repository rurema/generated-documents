# Open3?.pipeline_r

### module_function def pipeline_r(*cmds) -> [IO, [Thread]]
### module_function def pipeline_r(*cmds) {|last_stdout, wait_thrs| ... } -> ()

指定したコマンドのリストをパイプで繋いで順番に実行します。最後のコマンドの標準出力を受けとる事ができます。

- **param** `cmds` -- 実行するコマンドのリストを指定します。それぞれのコマンドは
            以下のように [String](../../../class/String.md) か [Array](../../../class/Array.md) で指定します。
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
        ブロックを指定しなかった場合は最後に実行するコマンドの標準出力、
        実行したプロセスを待つためのスレッドの配列を配列で返します。

```ruby title="例"
require "open3"

Open3.pipeline_r("yes", "head -10") {|r, ts|
  p r.read      #=> "y\ny\ny\ny\ny\ny\ny\ny\ny\ny\n"
  p ts[0].value #=> #<Process::Status: pid 24910 SIGPIPE (signal 13)>
  p ts[1].value #=> #<Process::Status: pid 24913 exit 0>
}
```

- **SEE** [Open3?.popen3](../../../method/Open3/m/popen3.md)
