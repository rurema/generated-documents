# ThreadGroup#enclose

### def enclose    -> self

自身への [ThreadGroup#add](../../../method/ThreadGroup/i/add.md) によるスレッドの追加・削除を禁止します。
enclose された ThreadGroup に追加や削除を行うと例外 [ThreadError](../../../class/ThreadError.md) が発生します。

ただし、[Thread.new](../../../method/Thread/s/new.md) によるスレッドの追加は禁止されません。enclose されたスレッドグループ A に属するスレッドが新たにスレッドを生成した場合、生成されたスレッドはスレッドグループ A に属します。

```ruby title="追加の例"
thg = ThreadGroup.new.enclose
thg.add Thread.new {}

# => -:2:in 'ThreadGroup#add': can't move to the enclosed thread group (ThreadError)
```

```ruby title="削除の例"
thg1 = ThreadGroup.new
thg2 = ThreadGroup.new

th = Thread.new {sleep 1}

thg1.add th
thg1.enclose
thg2.add th

# => -:8:in 'ThreadGroup#add': can't move from the enclosed thread group (ThreadError)
```
