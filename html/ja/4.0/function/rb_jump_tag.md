# rb_jump_tag

### void rb_jump_tag(int tag)

初出: [ruby-dev:4064]

[rb_load_protect](../function/rb_load_protect.md),[rb_eval_string_protect](../function/rb_eval_string_protect.md),[rb_protect](../function/rb_protect.md)
などで捕捉した大域脱出を再生成します。

tagには上記関数の引数で受け取ったstateを指定します。
