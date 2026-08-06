# Time#utc

### def gmtime    -> self
### def utc       -> self

タイムゾーンを協定世界時に設定します。

このメソッドを呼び出した後は時刻変換を協定世界時として行ないます。

[Time#localtime](../../../method/Time/i/localtime.md), [Time#gmtime](../../../method/Time/i/gmtime.md) の挙動はシステムの
[man:localtime(3)] の挙動に依存します。Time クラスでは時刻を起算時からの経過秒数として保持していますが、ある特定の時刻までの経過秒は、システムがうるう秒を勘定するかどうかによって異なる場合があります。システムを越えて Time オブジェクトを受け渡す場合には注意する必要があります。

```ruby
p t = Time.local(2000,1,1,20,15,1)   # => 2000-01-01 20:15:01 +0900
p t.gmt?                             # => false
p t.gmtime                           # => 2000-01-01 11:15:01 UTC
p t.gmt?                             # => true
```
