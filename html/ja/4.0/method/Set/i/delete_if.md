# Set#delete_if

### def delete_if {|o| ... } -> self

集合の各要素に対してブロックを実行し、その結果が真であるようなすべての要素を削除します。

常に self を返します。

```ruby
s1 = Set['hello.rb', 'test.rb', 'hello.rb.bak']
s1.delete_if {|str| str =~ /\.bak\z/}
p s1 # => Set["hello.rb", "test.rb"]
```

- **SEE** [Set#reject!](../../../method/Set/i/reject=21.md), [Enumerable#reject](../../../method/Enumerable/i/reject.md)
