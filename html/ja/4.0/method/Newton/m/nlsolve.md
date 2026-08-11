# Newton?.nlsolve

### module_function def nlsolve(f, x) -> Integer

ニュートン法を用いて非線形方程式 f(x) = 0 の解 x を求めます。

- **param** `f` -- 関数を表すオブジェクトを指定します。詳細は
         [bigdecimal/newton](../../../library/bigdecimal=2fnewton.md) をご覧ください。

- **param** `x` -- 探索を開始する点を数値の配列で指定します。解が複数ある場合、初期値によって得られる解が異なります。また、初期値によっては収束せずに [RuntimeError](../../../class/RuntimeError.md) が発生する場合があります。実行後は引数 x に指定したオブジェクトに解が代入されます。
         実行後は解を表す値が代入されています。

- **return** -- 計算した回数を整数で返します。

- **raise** `RuntimeError` -- 解が収束しない場合に発生します。
