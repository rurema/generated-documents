# Process.last_status

### def Process.last_status -> Process::Status | nil

カレントスレッドで最後に終了した子プロセスのステータスを返します。

変数 [m:$?] の値と同じです。

```ruby
Process.wait Process.spawn("ruby", "-e", "exit 13")
p Process.last_status # => #<Process::Status: pid 4825 exit 13>
```

カレントスレッドで子プロセスを実行したことがない場合は nil を返します。

```ruby
p Process.last_status # => nil
```

- **SEE** [Process::Status](../../../class/Process=3a=3aStatus.md)
- **SEE** [m:$?]
