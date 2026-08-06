# OpenStruct#each_pair

### def each_pair                  -> Enumerator
### def each_pair { |key, value| } -> self

self の各要素の名前と要素を引数としてブロックを評価します。

ブロックを指定した場合は self を返します。そうでない場合は
[Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
require 'ostruct'
data = OpenStruct.new("country" => "Australia", :population => 20_000_000)
p data.each_pair.to_a  # => [[:country, "Australia"], [:population, 20000000]]
```
