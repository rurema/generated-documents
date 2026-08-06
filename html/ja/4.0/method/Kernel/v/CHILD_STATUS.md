# Kernel$CHILD_STATUS

### gvar $CHILD_STATUS -> Process::Status | nil

[m:$?] の別名

```ruby
require "English"

out = `wget https://www.ruby-lang.org/en/about/license.txt -O - 2>/dev/null`

if $CHILD_STATUS.to_i == 0
  print "wget success\n"
  out.split(/\n/).each { |line|
    printf "%s\n", line
  }
else
  print "wget failed\n"
end
```
