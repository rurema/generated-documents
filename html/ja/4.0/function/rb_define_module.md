# rb_define_module

### VALUE rb_define_module(const char *name)

モジュール name を作成し返します。

```c title="例"
VALUE rb_mHoge = rb_define_module("Hoge"); // モジュールHogeを作成
```
