# class ThreadGroup < Object

スレッドグループを表すクラスです。グループに属する [Thread](../class/Thread.md) をまとめて操作できます。

[Thread](../class/Thread.md) は必ずいずれかひとつのスレッドグループに属します。
生成されたばかりの Thread は、生成した Thread のグループを引き継ぎます。
メインスレッドはデフォルトでは [ThreadGroup::Default](../method/ThreadGroup/c/Default.md) に属します。

```ruby title="例: 生成したすべてのThreadが終了するのを待つ"
5.times {
  Thread.new { sleep 1; puts "#{Thread.current} finished" }
}

(ThreadGroup::Default.list - [Thread.current]).each {|th| th.join}

puts "all threads finished"
```

対象の Thread が Thread を起こす可能性がある場合
([Thread::Mutex](../class/Thread=3a=3aMutex.md) 参照)

```ruby
mutex = Thread::Mutex.new
mutex.synchronize do
  (ThreadGroup::Default.list - [Thread.current]).each {|th| th.join}
end
```

### ThreadGroup#freeze と ThreadGroup#enclose の違い

どちらのメソッドでも [ThreadGroup#add](../method/ThreadGroup/i/add.md) によるスレッドの追加ができなくなる点は同じですが、
[Thread.new](../method/Thread/s/new.md) に関して違いがあります。現在のスレッドが属する ThreadGroup が freeze 
されている場合、Thread.new{ ... } はエラーになります。ThreadGroup が enclose されているだけでは、
Thread.new{ ... } はエラーになりません。生成されたスレッドは従来通り 親スレッドの ThreadGroup に属します。

## Class Methods

- [new](../method/ThreadGroup/s/new.md)

## Instance Methods

- [add](../method/ThreadGroup/i/add.md)
- [enclose](../method/ThreadGroup/i/enclose.md)
- [enclosed?](../method/ThreadGroup/i/enclosed=3f.md)
- [list](../method/ThreadGroup/i/list.md)

## Constants

- [Default](../method/ThreadGroup/c/Default.md)
