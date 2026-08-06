# Fiddle::Closure::BlockCaller.new

### def Fiddle::Closure::BlockCaller.new(ret, args, abi=Fiddle::Function::DEFAULT){ ... } -> Fiddle::Closure::BlockCaller

Ruby のブロックを呼び出す Fiddle::Closure オブジェクトを返します。

args、ret で関数の引数と返り値の型を指定します。
指定は [Fiddle::Function.new](../../../method/Fiddle=3a=3aFunction/s/new.md) と同様なので、そちらを参照してください。

- **param** `ret` -- 返り値の型
- **param** `args` -- 引数の型を表す配列
- **param** `abi` -- 呼出規約
