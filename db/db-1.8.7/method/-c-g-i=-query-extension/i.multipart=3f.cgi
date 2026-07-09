names=multipart?
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.jfEaAt/src/refm/api/src/cgi/core.rd

--- multipart? -> bool

マルチパートフォームの場合は、真を返します。
そうでない場合は、偽を返します。

       例：
       cgi = CGI.new
       if cgi.multipart?
         field1=cgi['field1'].read
       else
         field1=cgi['field1']
       end

