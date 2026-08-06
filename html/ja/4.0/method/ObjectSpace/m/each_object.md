# ObjectSpace?.each_object

### module_function def each_object        {|object| ...}    -> Integer
### module_function def each_object(klass) {|object| ...}    -> Integer
### module_function def each_object                          -> Enumerator
### module_function def each_object(klass)                   -> Enumerator

指定された klass と [Object#kind_of?](../../../method/Object/i/kind_of=3f.md) の関係にある全てのオブジェクトに対して繰り返します。引数が省略された時には全てのオブジェクトに対して繰り返します。
繰り返した数を返します。

ブロックが与えられなかった場合は、
[Enumerator](../../../class/Enumerator.md) オブジェクトを返します。

次のオブジェクトについては繰り返しません

- 即値の [Integer](../../../class/Integer.md) オブジェクト(ヒープ上に確保される大きな整数は繰り返します)
- Flonum(即値の [Float](../../../class/Float.md) オブジェクト)
- 静的な [Symbol](../../../class/Symbol.md) オブジェクト(動的に生成されたシンボルは繰り返します)
- [TrueClass](../../../class/TrueClass.md)
- [FalseClass](../../../class/FalseClass.md)
- [NilClass](../../../class/NilClass.md)

なお、[Symbol](../../../class/Symbol.md) をすべて列挙するには、かわりに [Symbol.all_symbols](../../../method/Symbol/s/all_symbols.md) が使用できます。

- **param** `klass` -- クラスかモジュールを指定します。

```ruby title="例: ブロックなし"
p ObjectSpace.each_object
# => #<Enumerator: ObjectSpace:each_object(false)>
```

```ruby title="例: 全てのオブジェクトを扱う"
ObjectSpace.each_object.take(5).each { |x| p x }
count = ObjectSpace.each_object { |x| x }
puts "Total count: #{count}"

# => "scope"
# => "scopes"
# => "sym"
# => "class_names"
# => "@corrections"
# => Total count: 9938
```

```ruby title="例: 任意のクラスを扱う"
Person = Struct.new(:name)
s1 = Person.new("tanaka")
s2 = Person.new("sato")

count = ObjectSpace.each_object(Person) { |x| p x }
puts "Total count: #{count}"

# => #<struct Person name="sato">
# => #<struct Person name="tanaka">
# => Total count: 2
```
