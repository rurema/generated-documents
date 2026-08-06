# Process::Status.wait

### def Process::Status.wait(pid = -1, flags = 0) -> Process::Status | nil

[Process?.wait](../../../method/Process/m/wait.md) と同じですが、プロセス ID ではなく
[Process::Status](../../../class/Process=3a=3aStatus.md) を返します。

pid と flags の意味は [Process?.wait](../../../method/Process/m/wait.md) と同じです。

子プロセスがない場合は、実在しないプロセスを表す「空の」
[Process::Status](../../../class/Process=3a=3aStatus.md) を返します。この場合 [Process::Status#pid](../../../method/Process=3a=3aStatus/i/pid.md) は -1 になります。

[Process?.wait](../../../method/Process/m/wait.md) と異なり、[m:$?] は更新されません。

すべてのプラットフォームで使えるわけではありません。

- **param** `pid` -- 待機する子プロセスのプロセス ID を指定します。
       指定できる値は [Process?.wait](../../../method/Process/m/wait.md) と同じです。

- **param** `flags` -- [Process::WNOHANG](../../../method/Process/c/WNOHANG.md) などを指定します。
             指定できる値は [Process?.wait](../../../method/Process/m/wait.md) と同じです。

- **return** -- flags に [Process::WNOHANG](../../../method/Process/c/WNOHANG.md) を指定していて、
             子プロセスがまだ終了していない場合は nil を返します。

```ruby
pid = fork { exit 1 }

status = Process::Status.wait(pid)
p status.class      # => Process::Status
p status.exitstatus # => 1

# Process.wait と違い $? は更新されない
p $?                # => nil
```

```ruby title="例: 子プロセスがない場合"
p Process::Status.wait # => #<Process::Status: pid -1 exit 0>
```

- **SEE** [Process?.wait](../../../method/Process/m/wait.md), [Process?.wait2](../../../method/Process/m/wait2.md)
