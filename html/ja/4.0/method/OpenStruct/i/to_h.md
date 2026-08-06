# OpenStruct#to_h

### def to_h -> { Symbol => object }
### def to_h {|name, value| block } -> Hash

self を各要素の名前をキー([Symbol](../../../class/Symbol.md))、要素が値のハッシュに変換して返します。

ブロックを指定すると各ペアでブロックを呼び出し、その結果をペアとして使います。

```ruby title="例"
require 'ostruct'
data = OpenStruct.new("country" => "Australia", :capital => "Canberra")
p data.to_h # => {:country => "Australia", :capital => "Canberra" }
p data.to_h {|name, value| [name.to_s, value.upcase] }
            # => {"country" => "AUSTRALIA", "capital" => "CANBERRA" }
```
