# module Mutex_m

スレッド同期機構である [Thread::Mutex](../class/Thread=3a=3aMutex.md) のモジュール版です。クラスに
[Module#include](../method/Module/i/include.md) することでそのクラスに Mutex 機能を持たせることができます。
また、普通のオブジェクトを [Object#extend](../method/Object/i/extend.md) により Mutex にする事ができます。

このモジュールによるロックは再入不可能です。再入可能な同等品が必要な場合は
[MonitorMixin](../class/MonitorMixin.md) の利用を検討してください(`sync` ライブラリの `Sync_m` は
Ruby 2.7 で標準添付から削除されました。sync gem をインストールすれば利用できます)。
ただし [MonitorMixin](../class/MonitorMixin.md) は単純な再入可能ロックであり、`Sync_m` が持っていた
reader/writer(共有・排他)ロックの区別はありません。

「mu_」の付かないメソッド([Mutex_m#lock](../method/Mutex_m/i/lock.md), [Mutex_m#synchronize](../method/Mutex_m/i/synchronize.md),
[Mutex_m#locked?](../method/Mutex_m/i/locked=3f.md), [Mutex_m#try_lock](../method/Mutex_m/i/try_lock.md), [Mutex_m#unlock](../method/Mutex_m/i/unlock.md))
はモジュールにincludeした場合には定義されません。

[ruby-list:1991]

### 例

クラスに [Module#include](../method/Module/i/include.md) する例

```ruby
require "mutex_m"
class Foo
  include Mutex_m
  # ...
end
obj = Foo.new
obj.synchronize do 
  # 危険領域(critical section)
  # ...
end
```

オブジェクトに [Object#extend](../method/Object/i/extend.md) する例

```ruby
require "mutex_m"
obj = Object.new
obj.extend(Mutex_m)
obj.lock
# 危険領域(critical section)  
... 
obj.unlock
```

## Class Methods

- [append_features](../method/Mutex_m/s/append_features.md)
- [define_aliases](../method/Mutex_m/s/define_aliases.md)
- [extend_object](../method/Mutex_m/s/extend_object.md)

## Instance Methods

- [lock](../method/Mutex_m/i/lock.md)
- [mu_lock](../method/Mutex_m/i/mu_lock.md)
- [locked?](../method/Mutex_m/i/locked=3f.md)
- [mu_locked?](../method/Mutex_m/i/mu_locked=3f.md)
- [mu_extended](../method/Mutex_m/i/mu_extended.md)
- [mu_synchronize](../method/Mutex_m/i/mu_synchronize.md)
- [synchronize](../method/Mutex_m/i/synchronize.md)
- [mu_try_lock](../method/Mutex_m/i/mu_try_lock.md)
- [try_lock](../method/Mutex_m/i/try_lock.md)
- [mu_unlock](../method/Mutex_m/i/mu_unlock.md)
- [unlock](../method/Mutex_m/i/unlock.md)
