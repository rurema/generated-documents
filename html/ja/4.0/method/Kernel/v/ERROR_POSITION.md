# Kernel$ERROR_POSITION

### gvar $ERROR_POSITION -> [String] | nil

[m:$@] の別名

```ruby
require "English"
class SomethingError < StandardError; end

begin
  raise SomethingError
rescue
  p $ERROR_POSITION #=> ["sample.rb:5"]
end
```
