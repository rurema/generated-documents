# OpenStruct#dig

### def dig(key, ...) -> object | nil

self 以下のネストしたオブジェクトを dig メソッドで再帰的に参照して返します。途中のオブジェクトが nil であった場合は nil を返します。

- **param** `key` -- キーを任意個指定します。

```ruby
require 'ostruct'
address = OpenStruct.new('city' => "Anytown NC", 'zip' => 12345)
person = OpenStruct.new('name' => 'John Smith', 'address' => address)
person.dig(:address, 'zip')          # => 12345
person.dig(:business_address, 'zip') # => nil
```

- **SEE** [Array#dig](../../../method/Array/i/dig.md), [Hash#dig](../../../method/Hash/i/dig.md), [Struct#dig](../../../method/Struct/i/dig.md)
