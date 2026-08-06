# Kernel$OUTPUT_RECORD_SEPARATOR

### gvar $ORS                     -> String | nil
### gvar $OUTPUT_RECORD_SEPARATOR -> String | nil

[m:$\\] の別名

```console
require "English"

print "hoge\nhuga\n"
$OUTPUT_RECORD_SEPARATOR = "\n"
print "fuge"
print "ugo"
# end of sample.rb

ruby sample.rb
hoge
huga
fuge
ugo
```
