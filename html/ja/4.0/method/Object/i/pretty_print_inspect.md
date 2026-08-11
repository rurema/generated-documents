# Object#pretty_print_inspect

### def pretty_print_inspect    -> String

[Object#pretty_print](../../../method/Object/i/pretty_print.md) を使って [Object#inspect](../../../method/Object/i/inspect.md) と同様にオブジェクトを人間が読める形式に変換した文字列を返します。

出力する全てのオブジェクトに [Object#pretty_print](../../../method/Object/i/pretty_print.md) が定義されている必要があります。
そうでない場合には [RuntimeError](../../../class/RuntimeError.md) が発生します。

- **raise** `RuntimeError` -- 出力する全てのオブジェクトに [Object#pretty_print](../../../method/Object/i/pretty_print.md) が定義されていない場合に発生します。
