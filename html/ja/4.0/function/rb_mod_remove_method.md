# rb_mod_remove_method

### static VALUE rb_mod_remove_method(VALUE mod, VALUE name)

Module#remove_method の実体。

モジュール mod から name という名前のメソッドを検索し、エントリを削除します。見付からなかったときは例外 [NameError](../class/NameError.md) が発生します。
