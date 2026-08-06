# Warning#warn

### def warn(message, category: nil) -> nil

引数 message を標準エラー出力 [m:$stderr] に出力します。

[Kernel?.warn](../../../method/Kernel/m/warn.md)の挙動を変更する際は、このメソッドではなくクラスメソッドである[Warning.warn](../../../method/Warning/s/warn.md)をオーバーライドする必要があります。

- **param** `message` -- 出力するオブジェクトを指定します。

- **param** `category` -- 警告のカテゴリを指定します。サポートされている category については [Warning.\[\]](../../../method/Warning/s/=5b=5d.md) を参照してください。


- **SEE** [Kernel?.warn](../../../method/Kernel/m/warn.md), [Warning.warn](../../../method/Warning/s/warn.md)
