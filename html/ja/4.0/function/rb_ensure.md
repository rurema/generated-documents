# rb_ensure

### VALUE rb_ensure(VALUE (*body)(VALUE), VALUE data1, VALUE (*ensure)(VALUE), VALUE data2)

ensure の C 版です。まず body(data1) を実行し、その途中で例外や exit が起きたとしても ensure(data2) が確実に実行されます ( body() が正常終了しても実行されます)。
