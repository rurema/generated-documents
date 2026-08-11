names=pretty_print_inspect
visibility=public
kind=added
source_location=manual/api/pp.md
since_by_name=
until_by_name=

### def pretty_print_inspect    -> String

[m:Object#pretty_print] を使って [m:Object#inspect] と同様にオブジェクトを人間が読める形式に変換した文字列を返します。

出力する全てのオブジェクトに [m:Object#pretty_print] が定義されている必要があります。
そうでない場合には [c:RuntimeError] が発生します。

- **raise** `RuntimeError` -- 出力する全てのオブジェクトに [m:Object#pretty_print] が定義されていない場合に発生します。

