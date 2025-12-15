names=sharing_detection,sharing_detection=
visibility=public
kind=defined
source_location=refm/api/src/pp.rd:169

--- sharing_detection                 -> bool
--- sharing_detection=(boolean)

共有検出フラグを表すアクセサです。
デフォルトは false です。true である場合、
[[m:PP.pp]] は一度出力したオブジェクトを再び出力する時
[[m:Object#pretty_print_cycle]] を使います。

@param boolean 共有検出フラグを true か false で指定します。

//emlist[][ruby]{
b = [1, 2, 3]
a = [b, b]

pp a                        #=> [[1, 2, 3], [1, 2, 3]]

PP.sharing_detection = true
pp a                        #=> [[1, 2, 3], [...]]
//}


