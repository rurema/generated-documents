# Monitor#try_mon_enter

### def try_enter     -> bool
### def try_mon_enter -> bool
### def mon_try_enter -> bool

モニターのロックを取得しようと試みます。
ロックに成功した(ロックが開放状態だった、もしくはロックを取得していたスレッドが自分自身であった)場合には真を返します。

ロックができなかった場合は偽を返し、実行を継続します。この場合にはスレッドはブロックしません。
