# rb_funcall

### VALUE rb_funcall(VALUE recv, ID name, int nargs, ...)

recv に対してメソッド name を呼びだし、メソッドの返り値を返します。プライベートメソッドも呼びだせます。

メソッドへの引数は第四引数以降にあたえ、その数を nargs
に指定します。それら引数はすべて VALUE でなければいけません。
