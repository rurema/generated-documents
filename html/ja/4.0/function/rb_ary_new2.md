# rb_ary_new2

### VALUE rb_ary_new2(long len)

長さ len 分だけメモリを確保した、長さゼロの Ruby の配列を作成し返します。

```text title="対応するRubyコード"
ary = Array.new(len)
```

```c title="使用例"
VALUE ary;
long len;
...
ary = rb_ary_new2(len);
```
