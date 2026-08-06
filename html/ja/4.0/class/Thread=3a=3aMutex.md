# class Thread::Mutex < Object

Mutex(Mutal Exclusion = 相互排他ロック)は共有データを並行アクセスから保護するためにあります。Mutex の典型的な使い方は(m を Mutex オブジェクトとします):

```ruby
m.lock
begin
  # m によって保護されたクリティカルセクション
ensure
  m.unlock
end
```

または、より簡単に

```ruby
m.synchronize {
  # m によって保護されたクリティカルセクション
}
```

## Class Methods

- [new](../method/Thread=3a=3aMutex/s/new.md)

## Instance Methods

- [lock](../method/Thread=3a=3aMutex/i/lock.md)
- [locked?](../method/Thread=3a=3aMutex/i/locked=3f.md)
- [owned?](../method/Thread=3a=3aMutex/i/owned=3f.md)
- [sleep](../method/Thread=3a=3aMutex/i/sleep.md)
- [synchronize](../method/Thread=3a=3aMutex/i/synchronize.md)
- [try_lock](../method/Thread=3a=3aMutex/i/try_lock.md)
- [unlock](../method/Thread=3a=3aMutex/i/unlock.md)
