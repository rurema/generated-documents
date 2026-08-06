# rb_thread_stop_timer

### void rb_thread_stop_timer(void)

setitimer(2) が存在する場合のみ定義されます。

Ruby のスレッドスケジューリングに使用しているインターバルタイマーを停止します。このタイマーが止まると Ruby のスレッド機構は基本的に停止しますので注意してください。
