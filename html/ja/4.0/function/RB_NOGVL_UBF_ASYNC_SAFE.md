# RB_NOGVL_UBF_ASYNC_SAFE

### int RB_NOGVL_UBF_ASYNC_SAFE

[rb_nogvl](../function/rb_nogvl.md) の `flags` に指定するフラグです。
渡した `ubf` がシグナルハンドラから呼べる (async-signal-safe な) 関数であることを示します。
async-signal-safe でない `ubf` でも問題ないため、よく分からなければ指定しなくて構いません。
