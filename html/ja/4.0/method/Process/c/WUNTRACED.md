# Process::WUNTRACED

### const WUNTRACED -> Integer

[Process?.waitpid](../../../method/Process/m/waitpid.md) の第二引数に指定するフラグです。
このフラグが指定された場合、waitpid は停止しているだけで終了していない子プロセスのプロセス ID も返すようになります。
trace されている子プロセスの ID は返しません。

```ruby
include Process
pid = fork{ Process.kill('SIGSTOP', Process.pid) }
p pid                          #=> 4336
p waitpid2(pid, WUNTRACED)     #=> [4336, #<Process::Status: pid=4336,stopped(SIGSTOP=19)>]
```

- **SEE** [man:waitpid(2)]
