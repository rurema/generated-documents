names=pretty
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.jfEaAt/src/refm/api/src/cgi/util.rd

--- pretty(string, shift = "  ") -> String

HTML を人間に見やすく整形した文字列を返します。

@param string HTML を指定します。

@param shift インデントに使用する文字列を指定します。デフォルトは半角空白二つです。

例：
        require "cgi"

        print CGI.pretty("<HTML><BODY></BODY></HTML>")
          # <HTML>
          #   <BODY>
          #   </BODY>
          # </HTML>

        print CGI.pretty("<HTML><BODY></BODY></HTML>", "\t")
          # <HTML>
          #         <BODY>
          #         </BODY>
          # </HTML>

