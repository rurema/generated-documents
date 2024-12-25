names=pretty_print_cycle
visibility=public
kind=added
source_location=refm/api/src/pp.rd:296

--- pretty_print_cycle(pp)    -> ()

プリティプリント時にオブジェクトの循環参照が検出された場合、
[[m:Object#pretty_print]] の代わりに呼ばれるメソッドです。

あるクラスの pp の出力をカスタマイズしたい場合は、
このメソッドも再定義する必要があります。

@param pp [[c:PP]] オブジェクトです。

//emlist[][ruby]{
class Array
  def pretty_print_cycle(q)
    q.text(empty? ? '[]' : '[...]')
  end
end
//}

@see [[m:Object#pretty_print]]

