# BigDecimal.limit

### def BigDecimal.limit(n = nil) -> Integer

生成されるBigDecimalオブジェクトの最大桁数をn桁に制限します。
n を指定しない、または n が nil の場合は、現状の最大桁数が返ります。

戻り値は設定する前の値です。設定値のデフォルト値は0で、桁数無制限を表しています。

計算を続行する間に、数字の桁数が無制限に増えてしまうような場合 limit で予め桁数を制限できます。この場合 [BigDecimal.mode](../../../method/BigDecimal/s/mode.md) で指定された丸め処理が実行されます。ただし、インスタンスメソッド ([BigDecimal#truncate](../../../method/BigDecimal/i/truncate.md) /
[BigDecimal#round](../../../method/BigDecimal/i/round.md) / [BigDecimal#ceil](../../../method/BigDecimal/i/ceil.md) / [BigDecimal#floor](../../../method/BigDecimal/i/floor.md) /
[BigDecimal#add](../../../method/BigDecimal/i/add.md)/ [BigDecimal#sub](../../../method/BigDecimal/i/sub.md) / [BigDecimal#mult](../../../method/BigDecimal/i/mult.md) /
[BigDecimal#div](../../../method/BigDecimal/i/div.md)) の桁数制限は limit より優先されます。

```ruby
require 'bigdecimal'
n = 0 # デフォルト値
mf = BigDecimal::limit(n)
```

- **param** `n` -- 新しい最大桁数を正の整数で指定します。

- **raise** `ArgumentError` -- n に負の数を指定した場合に発生します。
