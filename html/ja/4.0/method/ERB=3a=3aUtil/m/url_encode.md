# ERB::Util?.url_encode

### module_function def url_encode(s)  -> String
### module_function def u(s) -> String

文字列 s を URLエンコードした文字列を返します。

文字列 s 中に含まれる 2バイト文字や半角スペースについて URL エンコードを行った文字列を返します([CGI.escape](../../../method/CGI/s/escape.md)とほぼ同じです)。

- **param** `s` -- URLエンコードを行う文字列

```ruby title="例"
require "erb"
include ERB::Util

puts url_encode("Programming Ruby:  The Pragmatic Programmer's Guide")
# Programming%20Ruby%3A%20%20The%20Pragmatic%20Programmer%27s%20Guide
```
