# Set#reject!

### def reject! {|o| ... } -> self | nil

集合の各要素に対してブロックを実行し、その結果が真であるようなすべての要素を削除します。

要素が 1 つ以上削除されれば self を、1 つも削除されなければ
nil を返します。

```ruby
s2 = Set['hello.rb', 'test.rb', 'hello.rb.bak']
p s2.reject! {|str| str =~ /\.bak\z/} # => Set["hello.rb", "test.rb"]
p s2.reject! {|str| str =~ /\.o\z/}   # => nil
```

- **SEE** [Set#delete_if](../../../method/Set/i/delete_if.md), [Enumerable#reject](../../../method/Enumerable/i/reject.md)
