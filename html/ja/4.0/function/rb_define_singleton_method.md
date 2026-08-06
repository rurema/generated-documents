# rb_define_singleton_method

### void rb_define_singleton_method(VALUE obj, const char *name, VALUE (*func)(), int argc)

obj に特異メソッド name を定義します。
メソッドの実体を func に関数ポインタで与え、その関数がとる引数のタイプを argc に渡します。argc のフォーマットについては rb_define_method の記述を参照してください。
