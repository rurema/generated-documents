# rb_ary_to_s

### VALUE rb_ary_to_s(VALUE ary)

ary.to_s

```c title="使用例"
void debug_print(VALUE ary)
{
  Check_Type(ary, T_ARRAY);
  printf("%s", STR2CSTR(rb_ary_to_s(ary)));
}
```
