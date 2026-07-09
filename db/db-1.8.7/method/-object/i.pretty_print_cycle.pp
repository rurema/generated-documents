names=pretty_print_cycle
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.jfEaAt/src/refm/api/src/pp.rd

--- pretty_print_cycle(pp)    -> ()

プリティプリント時にオブジェクトの循環参照が検出された場合、
[[m:Object#pretty_print]] の代わりに呼ばれるメソッドです。

あるクラスの pp の出力をカスタマイズしたい場合は、
このメソッドも再定義する必要があります。

@param pp [[c:PP]] オブジェクトです。

例:
 
 class Array 
   def pretty_print_cycle(q)
     q.text(empty? ? '[]' : '[...]')
   end
 end

@see [[m:Object#pretty_print]]

