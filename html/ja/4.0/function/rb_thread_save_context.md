# rb_thread_save_context

### static void rb_thread_save_context(rb_thread_t th)

スレッドを切り替えるにあたって、現在実行中のスレッド th のコンテキストを評価器から th に退避します。
