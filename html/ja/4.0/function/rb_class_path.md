# rb_class_path

### VALUE rb_class_path(VALUE klass)

klass の名前を返します。klassが無名クラス、無名モジュールの場合 #<Class 0xXXXX>, #<Module 0xXXXX> の形式で返します。

[Module#to_s](../method/Module/i/to_s.md) の定義は

```c
rb_str_dup(rb_class_path(klass));
```

です。
