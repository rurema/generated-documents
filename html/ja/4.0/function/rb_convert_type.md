# rb_convert_type

### VALUE rb_convert_type(VALUE val, int type, const char *tname, const char *method)

オブジェクト val をクラス type のインスタンスに変換します。
変換には、val.method の戻り値が使われます。

val がもともと type クラスのインスタンスなら val をそのまま返します。
