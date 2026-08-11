# IRB::Context#eval_history=

### def eval_history=(val)

実行結果の履歴の最大保存件数を val に設定します。

.irbrc ファイル中で IRB.conf[:EVAL_HISTORY] を設定する事でも同様の事が行えます。

- **param** `val` -- 実行結果の履歴の最大保存件数を [Integer](../../../class/Integer.md) か nil で指定します。0 を指定した場合は無制限に履歴を保存します。現在の値よりも小さい値を指定した場合は履歴がその件数に縮小されます。
           nil を指定した場合は履歴の追加がこれ以上行われなくなります。

- **SEE** [IRB::Context#eval_history](../../../method/IRB=3a=3aContext/i/eval_history.md)
