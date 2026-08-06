# REXML::Element#add_attributes

### def add_attributes(attrs) -> ()

要素の属性を複数追加します。
同じ名前の属性がすでにある場合はその属性を新しい属性で置き換えます。

attrs には [Hash](../../../class/Hash.md) もしくは [Array](../../../class/Array.md) を指定できます。
Hash の場合は、

```text
{ "name1" => "value1", "name2" => "value2", ... }
```

という形で、配列の場合は

```text
[ ["name1", "value1"], ["name2", "value2"], ... }
```

という形で追加/更新する属性を指定します。

- **param** `attrs` -- 追加する属性の属性名と属性値の対の集合(Array or Hash)

```ruby
require 'rexml/document'
e = REXML::Element.new("e")
e.add_attributes({"a" => "b", "c" => "d"})
p e # => <e a='b' c='d'/>
e = REXML::Element.new("e")
e.add_attributes([["a", "b"], ["c", "d"]])
p e # => <e a='b' c='d'/>
```
