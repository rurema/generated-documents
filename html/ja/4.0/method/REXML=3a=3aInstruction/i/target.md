# REXML::Instruction#target

### def target -> String

XML 処理命令のターゲットを返します。

```ruby
require 'rexml/document'
doc = REXML::Document.new(<<EOS)
<?xml version="1.0" encoding="utf-8" ?>
<?xml-stylesheet type="text/css" href="style.css"?>
<root />
EOS
p doc[2] # => <?p-i xml-stylesheet ...?>
p doc[2].target # => "xml-stylesheet"
p doc[2].content # => "type=\"text/css\" href=\"style.css\""
```
