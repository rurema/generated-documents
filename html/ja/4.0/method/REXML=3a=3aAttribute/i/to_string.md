# REXML::Attribute#to_string

### def to_string -> String

"name='value'" という形式の文字列を返します。

```ruby
require 'rexml/document'
e = REXML::Element.new("el")
e.add_attribute("ns:r", "rval")
p e.attributes.get_attribute("r").to_string # => "ns:r='rval'"
```
