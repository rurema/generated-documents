# Kernel$ERROR_INFO

### gvar $ERROR_INFO -> Exception  | nil

[m:$!] の別名

```ruby
require "English"
class SomethingError < StandardError; end

begin
  raise SomethingError
rescue
  p $ERROR_INFO.backtrace # => ["sample.rb:5"]
  p $ERROR_INFO.to_s # => "SomethingError"
end
```
