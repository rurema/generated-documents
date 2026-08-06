# rb_define_protected_method

### void rb_define_protected_method(VALUE klass, const char *name, VALUE (*func)(), int argc)

クラス klass に protected インスタンスメソッド name を定義します。その実体は関数 func であり、その関数がとる引数のタイプを argc で指定します。argc のフォーマットについては rb_define_method の項を参照してください。
