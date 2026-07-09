names=pretty_print
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.xqkPhh/src/refm/api/src/pp.rd

--- pretty_print(pp)    -> ()

[[m:PP.pp]] や [[m:Kernel.#pp]] がオブジェクトの内容を出力するときに
呼ばれるメソッドです。[[c:PP]] オブジェクト pp を引数として呼ばれます。

あるクラスの pp の出力をカスタマイズしたい場合は、このメソッドを再定義します。
そのとき pretty_print メソッドは指定された pp に対して表示したい自身の内容を追加して
いかなければいけません。いくつかの組み込みクラスについて、
[[lib:pp]] ライブラリはあらかじめ pretty_print メソッドを定義しています。

@param pp [[c:PP]] オブジェクトです。

例:
  
 require 'pp'
 class Array
   def pretty_print(q)
     q.group(1, '[', ']') {
       q.seplist(self) {|v|
         q.pp v
       }
     }
   end
 end

@see [[m:Object#pretty_print_cycle]], [[m:Object#inspect]], [[m:PrettyPrint#text]], [[m:PrettyPrint#group]], [[m:PrettyPrint#breakable]]

