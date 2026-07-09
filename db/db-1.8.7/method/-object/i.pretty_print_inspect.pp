names=pretty_print_inspect
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.jfEaAt/src/refm/api/src/pp.rd

--- pretty_print_inspect    -> String

[[m:Object#pretty_print]] を使って [[m:Object#inspect]] と同様に
オブジェクトを人間が読める形式に変換した文字列を返します。

出力する全てのオブジェクトに [[m:Object#pretty_print]] が定義されている必要があります。
そうでない場合には [[c:RuntimeError]] が発生します。

@raise RuntimeError 出力する全てのオブジェクトに [[m:Object#pretty_print]] が定義されて
                    いない場合に発生します。

