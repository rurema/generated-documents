# JSON::Generator::GeneratorMethods::Object#to_json

### def to_json(state_or_hash = nil) -> String

自身を to_s で文字列にした結果を JSON 形式の文字列に変換して返します。

このメソッドはあるオブジェクトに to_json メソッドが定義されていない場合に使用するフォールバックのためのメソッドです。

- **param** `state_or_hash` -- 生成する JSON 形式の文字列をカスタマイズするため
                     に [JSON::State](../../../class/JSON=3a=3aState.md) のインスタンスか、
                     [JSON::State.new](../../../method/JSON=3a=3aState/s/new.md) の引数と同じ [Hash](../../../class/Hash.md) を
                     指定します。

```ruby title="例"
require "json"

class Person
  attr :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end
end

tanaka = Person.new("tanaka", 29)

p tanaka.to_json # => "\"#<Person:0x00007ffdec0167c8>\""
p tanaka.method(:to_json).owner # => JSON::Ext::Generator::GeneratorMethods::Object
```
