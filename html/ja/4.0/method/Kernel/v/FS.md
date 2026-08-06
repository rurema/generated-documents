# Kernel$FS

### gvar $FS              -> String | nil
### gvar $FIELD_SEPARATOR -> String | nil

[m:$;] の別名

```ruby
require "English"

str = "hoge,fuga,ugo,bar,foo"
p str.split #=> ["hoge,fuga,ugo,bar,foo"]
$FIELD_SEPARATOR = ","
p str.split #=> ["hoge", "fuga", "ugo", "bar", "foo"]
```
