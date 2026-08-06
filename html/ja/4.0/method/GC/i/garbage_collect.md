# GC#garbage_collect

### def garbage_collect(full_mark: true, immediate_mark: true, immediate_sweep: true) -> nil

ガーベージコレクトを開始します。

[GC.start](../../../method/GC/s/start.md) や [ObjectSpace?.garbage_collect](../../../method/ObjectSpace/m/garbage_collect.md) と同じ働きをします。
[GC.disable](../../../method/GC/s/disable.md) により GC が禁止されている場合でもガベージコレクトを開始します。

nil を返します。

- **param** `full_mark` -- マイナー GC を動作させる場合は false を、そうでない場
                 合は true を指定します。

- **param** `immediate_mark` -- mark を遅らせる(Lazy Mark を行う)場合は false
                       を、そうでない場合は true を指定します。

- **param** `immediate_sweep` -- sweep を遅らせる(Lazy Sweep を行う)場合は false
                       を、そうでない場合は true を指定します。

注意: これらのキーワード引数は Ruby の実装やバージョンによって異なります。将来のバージョンとの互換性も保証されません。また、Ruby の実装がサポートしていない場合はキーワード引数を指定しても無視される可能性があります。

```ruby title="例"
include GC
p GC.count  # => 3
garbage_collect
p GC.count  # => 4
```
