# remove_method

### static void remove_method(VALUE klass, ID mid)

クラス klass 自体に登録されている mid という名前のメソッドを検索し、エントリを削除します。見付からなかったときは例外 [NameError](../class/NameError.md)
を発生します。
