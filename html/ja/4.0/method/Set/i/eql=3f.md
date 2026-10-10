# Set#eql?

### def eql?(other) -> bool
{: since=""}

`other` が Set オブジェクトであり、self と同じ要素を持つときに true を返します。

要素の等しさは [Object#eql?](../../../method/Object/i/eql=3f.md) により判定されるため、`1.0` と `1` は別の要素として扱われます。
`other` が Set オブジェクトでない場合は false を返します。

Set を [Hash](../../../class/Hash.md) のキーとして使うときの比較に使われます。

- **param** `other` -- 比較対象のオブジェクトを指定します。

```ruby title="例"
p Set[1, 2].eql?(Set[2, 1])    # => true
p Set[1, 2].eql?(Set[1, 2, 3]) # => false
p Set[1, 2].eql?([1, 2])       # => false
p Set[1.0].eql?(Set[1])        # => false
```

- **SEE** [Set#==](../../../method/Set/i/=3d=3d.md), [Object#eql?](../../../method/Object/i/eql=3f.md)
