# Process?.wait

### module_function def wait(pid = -1, flags = 0)       -> Integer | nil
### module_function def wait2(pid = -1, flags = 0)      -> [Integer, Process::Status] | nil
### module_function def waitpid(pid = -1, flags = 0)    -> Integer | nil
### module_function def waitpid2(pid = -1, flags = 0)   -> [Integer, Process::Status] | nil

pid で指定される特定の子プロセスの終了を待ち、そのプロセスが終了した時に pid を返します。
wait2, waitpid2 は子プロセスの pid と終了ステータスを表す
[Process::Status](../../../class/Process=3a=3aStatus.md) オブジェクトの配列を返します。
ノンブロッキングモードで子プロセスがまだ終了していない時には
nil を返します。

[m:$?] に終了した子プロセスの [Process::Status](../../../class/Process=3a=3aStatus.md) オブジェクトがセットされます。

- **param** `pid` -- 子プロセスのプロセス ID を整数で指定します。
       0 以上なら指定されたプロセス ID の子プロセスを待ちます。
       0 なら呼び出し元のプロセスとプロセスグループ ID が同じ任意の子プロセスを待ちます。
       -1 (省略時のデフォルト) は任意の子プロセスを待ちます。
       -1 未満なら pid の絶対値とプロセスグループ ID が同じ任意の子プロセスを待ちます。

- **param** `flags` -- Process モジュールの定数 [Process::WNOHANG](../../../method/Process/c/WNOHANG.md)(ノンブロッキングモード)と
             [Process::WUNTRACED](../../../method/Process/c/WUNTRACED.md) の論理和を指定します。省略したときの値は 0 です。
             ノンブロッキングモードで子プロセスがまだ終了していない時には
             nil を返します。[man:waitpid(2)] か [man:wait4(2)] の実装されていないマシンでは
             flags はいつも nil または 0 を指定する必要があります。

- **raise** `Errno::ECHILD` -- 子プロセスが存在しない場合に発生します。

```ruby
pid = fork { sleep 1 }
p Process.wait2 # => [70024, #<Process::Status: pid 70024 exit 0>]
```

- **SEE** [man:wait(2)], [man:waitpid(2)]
