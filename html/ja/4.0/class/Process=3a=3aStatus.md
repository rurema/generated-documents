# class Process::Status < Object

プロセスの終了ステータスを表すクラスです。
メソッド [Process?.wait2](../method/Process/m/wait2.md) などの返り値として使われます。

### 使用例

```ruby title="wait を使用した例"
fork { exit }
Process.wait
case
when $?.signaled?
  p "child #{$?.pid} was killed by signal #{$?.termsig}"
  if $?.coredump?   # システムがこのステータスをサポートしてなければ常にfalse
    p "child #{$?.pid} dumped core."
  end
when $?.stopped?
  # 実際には Process.wait を使用しているので、ここに来ることはない
  p "child #{$?.pid} was stopped by signal #{$?.stopsig}"
when $?.exited?
  p "child #{$?.pid} exited normally. status=#{$?.exitstatus}"
else
  p "unknown status %#x" % $?.to_i
end
```

```text title="SIGCHLD を trap する例"
trap(:SIGCHLD) {|sig|

  puts "interrupted by signal #{sig} at #{caller[1]}"
  # 複数の子プロセスの終了に対して1つの SIGCHLD しか届かない
  # 場合があるのでループさせる必要があります

  while Process.waitpid(-1, Process::WNOHANG|Process::WUNTRACED)
    case
    when $?.signaled?
      puts "   child #{$?.pid} was killed by signal #{$?.termsig}"
      if $?.coredump?
        puts "   child #{$?.pid} dumped core."
      end
    when $?.stopped?
      puts "   child #{$?.pid} was stopped by signal #{$?.stopsig}"
    when $?.exited?
      puts "   child #{$?.pid} exited normally. status=#{$?.exitstatus}"
    else
      p "unknown status %#x" % $?.to_i
    end
  end
}

p pid1 = fork { sleep 1; exit }
p pid2 = fork { loop { sleep } } # signal を待つための sleep
begin
   Process.kill :STOP, pid2
   sleep                      # SIGCHLD を待つための sleep
   Process.kill :CONT, pid2
   Process.kill :TERM, pid2
   loop { sleep }             # SIGCHLD を待つための sleep
rescue Errno::ECHILD
  puts "done"
end

=> 12964
   12965
   interrupted by signal 17 at -:27:in 'Kernel#sleep'
      child 12965 was stopped by signal 19
   interrupted by signal 17 at -:30:in 'Kernel#sleep'
      child 12965 was killed by signal 15
   interrupted by signal 17 at -:30:in 'Kernel#sleep'
      child 12964 exited normally. status=0
   done
```

## Class Methods

- [wait](../method/Process=3a=3aStatus/s/wait.md)

## Instance Methods

- [==](../method/Process=3a=3aStatus/i/=3d=3d.md)
- [coredump?](../method/Process=3a=3aStatus/i/coredump=3f.md)
- [exited?](../method/Process=3a=3aStatus/i/exited=3f.md)
- [exitstatus](../method/Process=3a=3aStatus/i/exitstatus.md)
- [inspect](../method/Process=3a=3aStatus/i/inspect.md)
- [pid](../method/Process=3a=3aStatus/i/pid.md)
- [signaled?](../method/Process=3a=3aStatus/i/signaled=3f.md)
- [stopped?](../method/Process=3a=3aStatus/i/stopped=3f.md)
- [stopsig](../method/Process=3a=3aStatus/i/stopsig.md)
- [success?](../method/Process=3a=3aStatus/i/success=3f.md)
- [termsig](../method/Process=3a=3aStatus/i/termsig.md)
- [to_i](../method/Process=3a=3aStatus/i/to_i.md)
- [to_s](../method/Process=3a=3aStatus/i/to_s.md)
