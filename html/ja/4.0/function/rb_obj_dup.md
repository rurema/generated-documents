# rb_obj_dup

### VALUE rb_obj_dup(VALUE obj)

[Object#dup](../method/Object/i/dup.md) の実体です。

Cのソースコード上でオブジェクトの複製を作成して返します。

```c title="例"
VALUE 
return_copy(VALUE arg) 
{
    VALUE copy = rb_obj_dup(arg); // 引数で受け取ったオブジェクトを複製し、copyに代入。
    return copy;
}
```
