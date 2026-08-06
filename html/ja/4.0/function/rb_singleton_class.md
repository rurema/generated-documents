# rb_singleton_class

### VALUE rb_singleton_class(VALUE obj)

obj に特異クラスを導入し、その特異クラスを返します。
すでに特異クラスが導入されているときはそれをそのまま返します。

obj が特異メソッドを定義できない型のオブジェクトであるときは例外 TypeError を発生します。
