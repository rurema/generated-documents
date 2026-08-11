# Kernel$PREMATCH

### gvar $PREMATCH -> String | nil

[m:$`] の別名

```ruby
require "English"

str = 'hoge,foo,bar,hee,hoo'

/foo/ =~ str
p $PREMATCH  # => "hoge,"
```
