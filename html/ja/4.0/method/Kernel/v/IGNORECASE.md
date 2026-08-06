# Kernel$IGNORECASE

### gvar $IGNORECASE -> bool

過去との互換性のために残されていますが、もはや何の意味もありません。

値は常に false です。代入しても無視されます。

[m:$=] の別名

```ruby
require "English"

$IGNORECASE = true # => warning: variable $= is no longer effective; ignored
p $IGNORECASE      # => warning: variable $= is no longer effective
                   #    false
```
