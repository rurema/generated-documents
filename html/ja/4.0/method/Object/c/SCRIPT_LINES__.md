# Object::SCRIPT_LINES__

### const SCRIPT_LINES__ -> Hash

ソースファイル別にまとめられたソースコードの各行。

この定数は、デフォルトでは定義されていません。
この定数がハッシュとして定義された後にソースがコンパイルされると、そのソースファイル名をキーに、ソースを行毎に分割した配列を値にしたハッシュ要素が設定されます。

この定数はデバッガ ([debug](../../../library/debug.md)) などで利用されています。

また、 [Kernel?.eval](../../../method/Kernel/m/eval.md) によるコンパイルは対象にはなりません。

```ruby title="例"
require 'pp'
SCRIPT_LINES__ = {}
require 'English'
pp SCRIPT_LINES__

# => {"/usr/local/lib/ruby/1.6/English.rb"=>
#     ["alias $ERROR_INFO              $!\n",
#      "alias $ERROR_POSITION          $@\n",
#      "alias $LOADED_FEATURES         $\"\n",
#               :
#               :
#      "alias $POSTMATCH               $'\n",
#      "alias $LAST_PAREN_MATCH        $+\n"]}
```
