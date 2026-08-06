# rb_disable_super

### void rb_disable_super(VALUE klass, const char *name)

クラス klass のメソッド name からの super を禁止します。
klass とそのスーパークラスで name というメソッドが定義されていないときは例外 NameError を発生します。
