names=pp
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.jfEaAt/src/refm/api/src/pp.rd

--- pp(obj)    -> ()

指定されたオブジェクト obj を [[m:Object#pretty_print]] を使って自身のバッファに追加します。

obj がすでに、現在のノードの親において出力されていた場合には、
参照のループが存在しているので、[[m:Object#pretty_print]] の代わりに
[[m:Object#pretty_print_cycle]] が使われます。

@param obj 表示したいオブジェクトを指定します。

