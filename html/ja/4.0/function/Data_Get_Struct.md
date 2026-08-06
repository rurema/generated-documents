# Data_Get_Struct

### void Data_Get_Struct(VALUE obj, type, type *svar)

Ruby のオブジェクト obj から type 型へのポインタをとりだし svar に代入します。

```c title="使用例"
struct mytype {
    int i;
    char *s;
};

VALUE
my_i(VALUE self)
{
    struct mytype *m;
    Data_Get_Struct(self, struct mytype, m);
    return INT2NUM(m->i);
}
```
