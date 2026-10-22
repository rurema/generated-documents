# rb_remove_event_hook

### int rb_remove_event_hook(rb_event_hook_func_t func)

[rb_add_event_hook](../function/rb_add_event_hook.md) で登録したフック関数 `func` を、イベントフックの一覧から削除します。
1 つの `func` を複数のイベントで共有できるため、削除された個数が 1 より大きくなることがあります。

- **param** `func` -- 削除するフック関数です。
- **return** -- 削除したイベントフックの個数です。
