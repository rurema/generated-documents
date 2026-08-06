# REXML::Entity.matches?

### def REXML::Entity.matches?(string) -> bool

string が実体宣言の文法に従う文字列であれば真を返します。

- **param** `string` -- 判定対象の文字列

```ruby
require 'rexml/document'

p REXML::Entity.matches?('<!ENTITY s "seal">') # => true
p REXML::Entity.matches?('<!ENTITY % s "seal">') # => true
p REXML::Entity.matches?('<!ELEMENT br EMPTY >') # => false
```
