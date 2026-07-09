names=pp
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.wG7wMH/src/refm/api/src/pp.rd

--- pp(obj, out = $>, width = 79)    -> object

指定されたオブジェクト obj を出力先 out に幅 width で出力します。
出力先 out を返します。

@param obj 表示したいオブジェクトを指定します。

@param out 出力先を指定します。<< メソッドが定義されている必要があります。

@param width 出力先の幅を指定します。

  require 'pp'
  str = PP.pp([[:a, :b], [:a, [[:a, [:a, [:a, :b]]], [:a, :b],]]], '', 20)
  puts str
  #=>
  [[:a, :b],
   [:a,
    [[:a,
      [:a, [:a, :b]]],
     [:a, :b]]]]

@see [[m:$>]]

