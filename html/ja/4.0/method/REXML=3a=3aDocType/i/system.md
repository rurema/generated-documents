# REXML::DocType#system

### def system -> String | nil

DTD のシステム識別子を返します。

DTD が外部サブセットを含んでいない場合は nil を返します。

```ruby
require 'rexml/document'
doctype = REXML::Document.new(<<EOS).doctype
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
          "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
EOS
p doctype.system # => "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
p doctype.public  # => "-//W3C//DTD XHTML 1.0 Strict//EN"

doctype = REXML::Document.new(<<EOS).doctype
<!DOCTYPE root SYSTEM "foobar">
EOS
p doctype.system # => "foobar"
p doctype.public  # => nil
```
