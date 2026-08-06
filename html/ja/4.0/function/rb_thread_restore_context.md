# rb_thread_restore_context

### static void rb_thread_restore_context(rb_thread_t th, int exit)

スレッドを切り替えるにあたって、切り替え先のスレッド th のコンテキストを評価器に復帰します。
