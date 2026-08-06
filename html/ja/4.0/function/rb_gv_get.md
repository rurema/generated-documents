# rb_gv_get

### VALUE rb_gv_get(const char *name)

Ruby のグローバル変数の値を取得します。

```c title="使用例"
VALUE v = rb_gv_get("$!")
```
