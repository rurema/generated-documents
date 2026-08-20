# REXML::StreamListener#entity

### def entity(content) -> ()

DTD内で、パラメータ実体参照(%entityname;)が現れたときに呼び出されるコールバックメソッドです。

DTDの各宣言(要素型宣言や実体参照宣言)の内側で使われた場合はこのメソッドはコールバックされません。
各宣言のためのコールバックメソッド
([REXML::StreamListener#elementdecl](../../../method/REXML=3a=3aStreamListener/i/elementdecl.md) や [REXML::StreamListener#entitydecl](../../../method/REXML=3a=3aStreamListener/i/entitydecl.md)
など)
の引数の一部として渡されます。

Ruby 2.0 まではこのメソッドはコールバックされないことに注意してください。

- **param** `content` -- 参照名が文字列で渡されます。
