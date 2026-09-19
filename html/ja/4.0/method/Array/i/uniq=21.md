# Array#uniq!

### def uniq!    -> self | nil
### def uniq! {|item| ... } -> self | nil

配列から重複した要素を破壊的に取り除きます。
削除が行われた場合は self を、そうでなければnil を返します。

取り除かれた要素の部分は前に詰められます。
要素の重複判定は、[Object#eql?](../../../method/Object/i/eql=3f.md) により行われます。

```ruby title="例"
p [1, 1, 1].uniq!        # => [1]
p [1, 4, 1].uniq!        # => [1, 4]
p [1, 3, 2, 2, 3].uniq!  # => [1, 3, 2]
p [1, 3, 2].uniq!        # => nil
```

ブロックが与えられた場合、ブロックが返した値が重複した要素を取り除きます。

```ruby title="例"
p [1, 3, 2, "2", "3"].uniq!                # => nil
p [1, 3, 2, "2", "3"].uniq! { |n| n.to_s } # => [1, 3, 2]
```

要素を先頭から辿っていき、最初に出現したものが残ります。

- **SEE** [Array#uniq](../../../method/Array/i/uniq.md)
