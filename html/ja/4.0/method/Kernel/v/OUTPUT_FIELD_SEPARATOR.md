# Kernel$OUTPUT_FIELD_SEPARATOR

### gvar $OFS                    -> String | nil
### gvar $OUTPUT_FIELD_SEPARATOR -> String | nil

[m:$,] の別名

```ruby
require "English"

array = %w|hoge fuga ugo bar foo|
p array.join #=> "hogefugaugobarfoo"
$OUTPUT_FIELD_SEPARATOR = ","
p array.join #=> "hoge,fuga,ugo,bar,foo"
```
