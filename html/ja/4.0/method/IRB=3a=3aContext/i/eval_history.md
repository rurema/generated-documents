# IRB::Context#eval_history

### def eval_history -> Integer | nil

実行結果の履歴の最大保存件数を [Integer](../../../class/Integer.md) か nil で返します。

- **return** -- 履歴の最大保存件数を [Integer](../../../class/Integer.md) か nil で返します。0 を返し
        た場合は無制限に保存します。nil を返した場合は追加の保存は行いません。

- **SEE** [IRB::Context#eval_history=](../../../method/IRB=3a=3aContext/i/eval_history=3d.md)
