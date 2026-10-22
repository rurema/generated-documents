# rb_add_event_hook

### void rb_add_event_hook(rb_event_hook_func_t func, rb_event_flag_t events, VALUE data)

インタプリタのイベントに対するフック関数を登録します。
`events` に指定したイベントが起きると `func` が呼ばれます。

`events` には、次のイベントを論理和で指定します。

- `RUBY_EVENT_LINE`
- `RUBY_EVENT_CLASS`
- `RUBY_EVENT_END`
- `RUBY_EVENT_CALL`
- `RUBY_EVENT_RETURN`
- `RUBY_EVENT_C_CALL`
- `RUBY_EVENT_C_RETURN`
- `RUBY_EVENT_RAISE`

`func` は、発生したイベントの種類、`data`、現在のレシーバ、メソッド名、クラスを引数に受け取ります。

登録したフックは [rb_remove_event_hook](../function/rb_remove_event_hook.md) で削除できます。

- **param** `func` -- イベントが起きたときに呼ばれる関数です。
- **param** `events` -- `func` を呼ぶイベントの集合です。
- **param** `data` -- `func` にそのまま渡される値です。
