# Thread#group

### def group    -> ThreadGroup

スレッドが属している [ThreadGroup](../../../class/ThreadGroup.md) オブジェクトを返します。

```ruby
p Thread.current.group == ThreadGroup::Default
# => true
```
