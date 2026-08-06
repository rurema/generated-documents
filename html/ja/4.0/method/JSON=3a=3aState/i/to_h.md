# JSON::State#to_h

### def to_h    -> Hash
### def to_hash -> Hash

自身をハッシュに変換します。

```ruby title="例"
require "json"
require "pp"

json_state = JSON::State.new
pp json_state.to_h

# => {:indent=>"",
#     :space=>"",
#     :space_before=>"",
#     :object_nl=>"",
#     :array_nl=>"",
#     :allow_nan=>false,
#     :ascii_only=>false,
#     :max_nesting=>100,
#     :depth=>0,
#     :buffer_initial_length=>1024}
```
