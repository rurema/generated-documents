# rb_compile_file

### NODE * rb_compile_file(const char *f, VALUE file, int start)

Ruby の IO オブジェクト file から文字列を読み込み、それを Ruby プログラムとして構文木にコンパイルします。
作成した構文木は ruby_eval_tree と ruby_eval_tree_begin に格納し、同時に ruby_eval_tree を返します。
またコンパイルするときにファイル f の line 行目からをコンパイルしていると仮定します。
