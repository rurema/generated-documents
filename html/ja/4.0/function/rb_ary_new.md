# rb_ary_new

### VALUE rb_ary_new()

空の Ruby の配列を作成し返します。

```text title="対応するRubyコード"
ary = Array.new または
ary = []
```

```c title="使用例"
VALUE ary;
ary = rb_ary_new();
```
