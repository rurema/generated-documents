# Kernel$MATCH

### gvar $MATCH -> String | nil

[m:$&] の別名

```ruby
require "English"

str = 'hoge,foo,bar,hee,hoo'

/(foo|bar)/ =~ str
p $MATCH     # => "foo"
```
