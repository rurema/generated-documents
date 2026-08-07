# rb_memory_view_is_contiguous

### bool rb_memory_view_is_contiguous(const rb_memory_view_t *view)

メモリビュー `view` のデータが行指向か列指向 contiguous 配列であれば `true` を返します。

そうでなければ `false` を返します。
