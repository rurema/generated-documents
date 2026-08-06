# rb_ary_new3

### VALUE rb_ary_new3(long n, VALUE i0, i1, i2, ...)

長さ n で要素に i0 i1 i2 …を格納した
Ruby の配列を作成し返します。

```text title="対応するRubyコード"
ary = Array[i0, i1, i2...] または
ary = [i0, i1, i2...]
```

```c title="使用例"
VALUE ary;
int i[3] = { 1, 2, 3 };
ary = rb_ary_new3(3, INT2FIX(i[0]), INT2FIX(i[1]), INT2FIX(i[2]));
```
