names=singleline_pp
visibility=public
kind=defined
source_location=manual/api/pp.md
since_by_name=
until_by_name=
rbs_sig=(uninitialized)

### def PP.singleline_pp(obj, out=$>)    -> object

指定されたオブジェクト obj を出力先 out に出力します。
ただし、インデントも改行もしません。
出力先 out を返します。

- **param** `obj` -- 表示したいオブジェクトを指定します。

- **param** `out` -- 出力先を指定します。<< メソッドが定義されている必要があります。

