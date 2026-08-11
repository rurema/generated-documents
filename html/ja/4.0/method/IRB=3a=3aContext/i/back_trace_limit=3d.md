# IRB::Context#back_trace_limit=

### def back_trace_limit=(val)

エラー発生時のバックトレース表示の先頭、末尾の上限の行数をそれぞれ val
行に設定します。

.irbrc ファイル中で IRB.conf[:BACK_TRACE_LIMIT] を設定する事でも同様の操作が行えます。

- **param** `val` -- バックトレース表示の先頭、末尾の上限を [Integer](../../../class/Integer.md) で指定します。

- **SEE** [IRB::Context#back_trace_limit](../../../method/IRB=3a=3aContext/i/back_trace_limit.md)
