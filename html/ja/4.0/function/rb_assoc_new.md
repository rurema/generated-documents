# rb_assoc_new

### VALUE rb_assoc_new(VALUE a, VALUE b)

[a,b] を返します。

```text title="対応するRubyコード"
[a, b]
```

```c title="使用例"
VALUE assoc_string(VALUE str_a, VALUE str_b)
{
  Check_Type(str_a, T_STRING);
  Check_Type(str_b, T_STRING);
  return rb_assoc_new(str_a, str_b);
}
```
