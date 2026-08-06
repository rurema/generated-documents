# rb_define_private_method

### void rb_define_private_method(VALUE klass, const char *name, VALUE(*func)(), int argc)

クラス klass にプライベートインスタンスメソッド name を定義します。その実体は関数 func であり、その関数がとる引数のタイプを argc で指定します。argc のフォーマットについては rb_define_method の項を参照してください。
