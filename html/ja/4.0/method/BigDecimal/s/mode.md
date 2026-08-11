# BigDecimal.mode

### def BigDecimal.mode(s)    -> Integer | nil
### def BigDecimal.mode(s, v) -> Integer | nil

[BigDecimal](../../../class/BigDecimal.md) の計算処理の制御方法を設定、確認します。

第2引数を省略、または nil を指定すると現状の設定値を返します。

- **param** `s` -- 制御方法の設定、確認を行う項目を BigDecimal::EXCEPTION_*、
         [BigDecimal::ROUND_MODE](../../../method/BigDecimal/c/ROUND_MODE.md) のいずれかで指定します。

- **param** `v` -- 引数 s が [BigDecimal::ROUND_MODE](../../../method/BigDecimal/c/ROUND_MODE.md) の場合は
         [BigDecimal::ROUND_MODE](../../../method/BigDecimal/c/ROUND_MODE.md) 以外の BigDecimal::_ROUND* のいずれかを指定します。指定した丸め処理が有効になります。
         それ以外の場合は、true、false、nil のいずれかを指定します。
         true を指定した場合は設定値が有効になり、false を指定した場合は設定値が無効になります。

- **raise** `TypeError` -- 引数 s に有効でない値を指定した場合に発生します。

- **raise** `ArgumentError` -- 引数 s に例外処理に関する値を指定し、引数 v に
                     true、false 以外の値を指定した場合に発生します。

以下の使用方法が定義されています。

### 例外処理

計算結果が非数(NaN)やゼロによる除算になったときの処理を定義できます。

```ruby
require 'bigdecimal'
flag = false # デフォルト値
f = BigDecimal::mode(BigDecimal::EXCEPTION_NaN,flag)
f = BigDecimal::mode(BigDecimal::EXCEPTION_INFINITY,flag)
f = BigDecimal::mode(BigDecimal::EXCEPTION_UNDERFLOW,flag)
f = BigDecimal::mode(BigDecimal::EXCEPTION_OVERFLOW,flag)
f = BigDecimal::mode(BigDecimal::EXCEPTION_ZERODIVIDE,flag)
f = BigDecimal::mode(BigDecimal::EXCEPTION_ALL,flag)
```

  - [BigDecimal::EXCEPTION_NaN](../../../method/BigDecimal/c/EXCEPTION_NaN.md) は結果が NaN になったときの指定です。
  - [BigDecimal::EXCEPTION_INFINITY](../../../method/BigDecimal/c/EXCEPTION_INFINITY.md) は結果が無限大(±Infinity)になったときの指定です。
  - [BigDecimal::EXCEPTION_UNDERFLOW](../../../method/BigDecimal/c/EXCEPTION_UNDERFLOW.md) は指数部がアンダーフローするときの指定です。
  - [BigDecimal::EXCEPTION_OVERFLOW](../../../method/BigDecimal/c/EXCEPTION_OVERFLOW.md) は指数部がオーバーフローするときの指定です。
  - [BigDecimal::EXCEPTION_ZERODIVIDE](../../../method/BigDecimal/c/EXCEPTION_ZERODIVIDE.md) はゼロによる割り算を実行したときの指定です。
  - [BigDecimal::EXCEPTION_ALL](../../../method/BigDecimal/c/EXCEPTION_ALL.md) は、可能な全てに対して一括して設定するときに使用します。

flag が true のときは、指定した状態になったときに例外を発行するようになります。
flag が false(デフォルト)なら、例外は発行されません。計算結果は以下のようになります。

  - [BigDecimal::EXCEPTION_NaN](../../../method/BigDecimal/c/EXCEPTION_NaN.md) のとき、非数(NaN)
  - [BigDecimal::EXCEPTION_INFINITY](../../../method/BigDecimal/c/EXCEPTION_INFINITY.md) のとき、無限(+ or -Infinity)
  - [BigDecimal::EXCEPTION_UNDERFLOW](../../../method/BigDecimal/c/EXCEPTION_UNDERFLOW.md) のとき、ゼロ
  - [BigDecimal::EXCEPTION_OVERFLOW](../../../method/BigDecimal/c/EXCEPTION_OVERFLOW.md) のとき、+Infinity か -Infinity
  - [BigDecimal::EXCEPTION_ZERODIVIDE](../../../method/BigDecimal/c/EXCEPTION_ZERODIVIDE.md) のとき、+Infinity か -Infinity

[BigDecimal::EXCEPTION_INFINITY](../../../method/BigDecimal/c/EXCEPTION_INFINITY.md)、[BigDecimal::EXCEPTION_OVERFLOW](../../../method/BigDecimal/c/EXCEPTION_OVERFLOW.md)、
[BigDecimal::EXCEPTION_ZERODIVIDE](../../../method/BigDecimal/c/EXCEPTION_ZERODIVIDE.md) は今のところ同じです。
戻り値は、設定後の値です。「値」の意味は、例えば [BigDecimal::EXCEPTION_NaN](../../../method/BigDecimal/c/EXCEPTION_NaN.md)
と「値」の & が ゼロ以外ならば [BigDecimal::EXCEPTION_NaN](../../../method/BigDecimal/c/EXCEPTION_NaN.md)が設定されているという意味です。

### 丸め処理指定

計算途中の丸め操作の指定ができます。

```ruby
require 'bigdecimal'
flag = BigDecimal::ROUND_HALF_UP # デフォルト値
f = BigDecimal::mode(BigDecimal::ROUND_MODE,flag)
```

の形式で指定します。
ここで、flag は以下(括弧内は対応するインスタンスメソッド)の一つを指定します。

  - [BigDecimal::ROUND_UP](../../../method/BigDecimal/c/ROUND_UP.md) 全て切り上げます。
  - [BigDecimal::ROUND_DOWN](../../../method/BigDecimal/c/ROUND_DOWN.md) 全て切り捨てます(truncate)。
  - [BigDecimal::ROUND_HALF_UP](../../../method/BigDecimal/c/ROUND_HALF_UP.md) 四捨五入します(デフォルト)。
  - [BigDecimal::ROUND_HALF_DOWN](../../../method/BigDecimal/c/ROUND_HALF_DOWN.md) 五捨六入します。
  - [BigDecimal::ROUND_HALF_EVEN](../../../method/BigDecimal/c/ROUND_HALF_EVEN.md) 四捨六入します。5の時は上位1桁が奇数の時のみ繰り上げます(Banker's rounding)。
  - [BigDecimal::ROUND_CEILING](../../../method/BigDecimal/c/ROUND_CEILING.md) 数値の大きい方に繰り上げます(ceil)。
  - [BigDecimal::ROUND_FLOOR](../../../method/BigDecimal/c/ROUND_FLOOR.md) 数値の小さい方に繰り下げます(floor)。

戻り値は指定後の flag の値です。第2引数に nil を指定すると、現状の設定値が返ります。 mode メソッドでは丸め操作の位置をユーザが指定することはできません。丸め操作と位置を自分で制御したい場合は BigDecimal::limit や truncate/round/ceil/floor、 add/sub/mult/div といったインスタンスメソッドを使用して下さい。
