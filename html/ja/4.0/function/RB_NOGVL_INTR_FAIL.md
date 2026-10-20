# RB_NOGVL_INTR_FAIL

### int RB_NOGVL_INTR_FAIL

[rb_nogvl](../function/rb_nogvl.md) の `flags` に指定するフラグです。
`func` から戻ったあとで割り込みを処理しなくなります。
代わりに、ブロッキング領域に入る前に割り込みを検出したときは、`func` を呼ばずに戻ります。
`func` の副作用を考慮したうえで、あとから呼び出し側で割り込みを確認できます。
