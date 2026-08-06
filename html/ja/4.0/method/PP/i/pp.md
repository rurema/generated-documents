# PP#pp

### def pp(obj)    -> ()

指定されたオブジェクト obj を [Object#pretty_print](../../../method/Object/i/pretty_print.md) を使って自身のバッファに追加します。

obj がすでに、現在のノードの親において出力されていた場合には、参照のループが存在しているので、[Object#pretty_print](../../../method/Object/i/pretty_print.md) の代わりに
[Object#pretty_print_cycle](../../../method/Object/i/pretty_print_cycle.md) が使われます。

- **param** `obj` -- 表示したいオブジェクトを指定します。
