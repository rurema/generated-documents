# SignalException#signm

### def signm -> String

self.message のエイリアスです。

```ruby title="例"
begin
  Process.kill('HUP', Process.pid)
  sleep
rescue SignalException => e
  puts e.signm  # => SIGHUP
end
```
