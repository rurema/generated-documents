# ENV.has_value?

### def ENV.has_value?(val) -> bool
### def ENV.value?(val)     -> bool

val を値として持つ環境変数が存在する時、真を返します。

- **param** `val` -- 値を指定します。文字列で指定します。文字
           列以外のオブジェクトを指定した場合は to_str メソッドによる暗
           黙の型変換を試みます。
