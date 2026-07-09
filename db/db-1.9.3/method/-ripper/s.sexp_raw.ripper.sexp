names=sexp_raw
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ZtgaSH/src/refm/api/src/ripper/sexp.rd

--- Ripper.sexp_raw(src, filename = '-', lineno = 1) -> object

Ruby プログラム str を解析して S 式のツリーにして返します。

@param src Ruby プログラムを文字列か IO オブジェクトで指定します。

@param filename src のファイル名を文字列で指定します。省略すると "-" になります。

@param lineno src の開始行番号を指定します。省略すると 1 になります。

実行結果は、括弧の代わりに配列の要素として S 式のツリーを表現しています。

例:

  require 'ripper'
  require 'pp'
  
  pp Ripper.sexp_raw("def m(a) nil end")
    # => [:program,
          [:stmts_add,
           [:stmts_new],
           [:def,
            [:@ident, "m", [1, 4]],
            [:paren, [:params, [[:@ident, "a", [1, 6]]], nil, nil, nil]],
            [:bodystmt,
             [:stmts_add, [:stmts_new], [:var_ref, [:@kw, "nil", [1, 9]]]],
             nil,
             nil,
             nil]]]]

Ripper.sexp_raw は [[m:Ripper.sexp]] とは異なり解析結果を加工しません。

@see [[m:Ripper.sexp]]
