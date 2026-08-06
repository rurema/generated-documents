# BasicObject#__id__

### def __id__ -> Integer

各オブジェクトに対して一意な整数を返します。あるオブジェクトに対してどのような整数が割り当てられるかは不定です。

[Object#object_id](../../../method/Object/i/object_id.md) と同じですが、#object_id は [BasicObject](../../../class/BasicObject.md) にはない事に注意してください。

```ruby title="例"
# frozen_string_literal: false
obj = Object.new
p obj.object_id == obj.__id__            # => true
p Object.new.__id__  == Object.new.__id__  # => false
p (21 * 2).__id__    == (21 * 2).__id__  # => true
p "hello".__id__     == "hello".__id__   # => false
p "hi".freeze.__id__ == "hi".freeze.__id__ # => true
```

- **SEE** [Object#object_id](../../../method/Object/i/object_id.md), [ruby-dev:42840]
