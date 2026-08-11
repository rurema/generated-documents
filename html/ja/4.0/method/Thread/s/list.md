# Thread.list

### def Thread.list    -> [Thread]

全ての生きているスレッドを含む配列を生成して返します。aborting 状態であるスレッドも要素に含まれます。

```ruby
Thread.new do
  sleep 
end
sleep 0.1
  
p Thread.list   # => [#<Thread:0x40377a54 sleep>, #<Thread:0x4022e6fc run>]
```
