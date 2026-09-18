# Process?.wait2

### module_function def wait2(pid = -1, flags = 0)      -> [Integer, Process::Status] | nil
### module_function def waitpid2(pid = -1, flags = 0)   -> [Integer, Process::Status] | nil

pid で指定される特定の子プロセスの終了を待ち、そのプロセスが終了した時に
子プロセスの pid と終了ステータスを表す [Process::Status](../../../class/Process=3a=3aStatus.md) オブジェクトの配列を返します。
ノンブロッキングモードで子プロセスがまだ終了していない時には
nil を返します。

[m:$?] に終了した子プロセスの [Process::Status](../../../class/Process=3a=3aStatus.md) オブジェクトがセットされます。

- **param** `pid` -- [Process?.wait](../../../method/Process/m/wait.md) の pid と同じです。

- **param** `flags` -- [Process?.wait](../../../method/Process/m/wait.md) の flags と同じです。

- **raise** `Errno::ECHILD` -- 子プロセスが存在しない場合に発生します。

```ruby
pid = fork { sleep 1 }
p Process.wait2 # => [70024, #<Process::Status: pid 70024 exit 0>]
```

- **SEE** [Process?.wait](../../../method/Process/m/wait.md), [man:wait(2)], [man:waitpid(2)]
