names=pp
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ZtgaSH/src/refm/api/src/pp.rd

--- pp(*obj)    -> object

指定されたオブジェクト obj を標準出力に見やすい形式(プリティプリント)で出力します。
obj それぞれを引数として [[m:PP.pp]] を呼びことと同等です。

@param obj 表示したいオブジェクトを指定します。

例:
  require 'pp'

  b = [1, 2, 3] * 4
  a = [b, b]
  a << a    
  pp a

  #=> [[1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3],
       [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3],
       [...]]

@see [[m:PP.pp]]

