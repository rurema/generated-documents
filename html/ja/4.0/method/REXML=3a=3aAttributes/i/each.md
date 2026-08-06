# REXML::Attributes#each

### def each {|name, value| ... } -> ()

各属性の名前と値に対しブロックを呼び出します。

名前には expanded_name([REXML::Namespace#expanded_name](../../../method/REXML=3a=3aNamespace/i/expanded_name.md))が渡されます。

```ruby
require 'rexml/document'

doc = REXML::Document.new(<<EOS)
<root xmlns:foo="http://example.org/foo"
      xmlns:bar="http://example.org/bar">
  <a foo:att='1' bar:att='2' att='&lt;'/>
</root>
EOS
a = doc.get_elements("/root/a").first

a.attributes.each do |name, value|
  p [name, value]
end

# => ["foo:att", "1"]
# => ["bar:att", "2"]
# => ["att", "<"]
```
