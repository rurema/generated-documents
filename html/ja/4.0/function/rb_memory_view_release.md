# rb_memory_view_release

### bool rb_memory_view_release(rb_memory_view_t *view)

メモリビュー `view` を解放して `view->obj` の参照カウントを減らします。

コンシューマは、メモリビューが不要になった時にこの関数を呼ばなくてはなりません。呼び忘れるとメモリリークが起こります。

`rb_memory_view_entry_t->release_func` が呼ばれます。 `release_func` が `NULL` であるか `true` を返せば `true` を返します。

メモリビューが登録されていないか  `release_func` が `false` を返すと `false`を返します。この場合は参照カウントの減少は行われず、 `rb_memory_view_entry_t->item_desc` も解放されません。
