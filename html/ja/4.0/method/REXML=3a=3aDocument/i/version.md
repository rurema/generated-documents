# REXML::Document#version

### def version -> String

XML 宣言に含まれている XML 文書のバージョンを返します。

文書が XML 宣言を持たない場合はデフォルトの値
([REXML::XMLDecl.default](../../../method/REXML=3a=3aXMLDecl/s/default.md)で宣言されているもの)を返します。

```ruby
require 'rexml/document'
doc = REXML::Document.new(<<EOS)
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<e />
EOS
p doc.version # => "1.0"
```
