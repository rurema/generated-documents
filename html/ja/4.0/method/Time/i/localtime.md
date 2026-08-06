# Time#localtime

### def localtime             -> self
### def localtime(utc_offset) -> self

タイムゾーンを地方時に設定します。

このメソッドを呼び出した後は時刻変換を協定地方時として行ないます。

- **param** `utc_offset` -- タイムゾーンを地方時に設定する代わりに協定世界時との
                  時差を、秒を単位とする整数か、"+HH:MM" "-HH:MM" 形式
                  の文字列で指定します。

[Time#localtime](../../../method/Time/i/localtime.md), [Time#gmtime](../../../method/Time/i/gmtime.md) の挙動はシステムの
[man:localtime(3)] の挙動に依存します。Time クラスでは時刻を起算時からの経過秒数として保持していますが、ある特定の時刻までの経過秒は、システムがうるう秒を勘定するかどうかによって異なる場合があります。システムを越えて Time オブジェクトを受け渡す場合には注意する必要があります。

```ruby
p t = Time.utc(2000, "jan", 1, 20, 15, 1)  # => 2000-01-01 20:15:01 UTC
p t.utc?                                   # => true
p t.localtime                              # => 2000-01-02 05:15:01 +0900
p t.utc?                                   # => false

p t.localtime("+09:00")                    # => 2000-01-02 05:15:01 +0900
p t.utc?                                   # => false
```
