# Kernel$INPUT_RECORD_SEPARATOR

### gvar $RS                     -> String | nil
### gvar $INPUT_RECORD_SEPARATOR -> String | nil

[m:$/] の別名

```ruby
require "English"

$INPUT_RECORD_SEPARATOR = '|'
array = []
while line = DATA.gets
  array << line
end
p array #=> ["ugo|", "ego|", "fogo\n"]

__END__
ugo|ego|fogo
```
