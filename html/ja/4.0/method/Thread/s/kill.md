# Thread.kill

### def Thread.kill(thread)    -> Thread

指定したスレッド thread に対して [Thread#exit](../../../method/Thread/i/exit.md) を呼びます。終了したスレッドを返します。

- **param** `thread` -- 終了したい Thread オブジェクトを指定します。

```ruby
th = Thread.new do
end

p Thread.kill(th)     # => #<Thread:0x40221bc8 dead>
```
