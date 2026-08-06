# REXML::Document#stand_alone?

### def stand_alone? -> String

XML 宣言の standalone の値を文字列で返します。

```ruby
require 'rexml/document'
doc = REXML::Document.new(<<EOS)
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<e />
EOS
p doc.stand_alone? # => "yes"
```
