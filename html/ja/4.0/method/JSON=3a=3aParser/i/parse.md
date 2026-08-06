# JSON::Parser#parse

### def parse -> object

現在のソースをパースして結果を Ruby のオブジェクトとして返します。

```ruby title="例"
require 'json'

class Person
  attr_accessor :name, :age

  def []=(key, value)
    instance_variable_set("@#{key}", value)
  end
end

parser = JSON::Parser.new(DATA.read, object_class: Person)
person = parser.parse
person.class # => Person
person.name  # => "tanaka"
person.age   # => 20

__END__
{
  "name":"tanaka",
  "age":20
}
```

- **SEE** [JSON::Parser#source](../../../method/JSON=3a=3aParser/i/source.md)
