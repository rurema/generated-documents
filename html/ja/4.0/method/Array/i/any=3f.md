# Array#any?

### def any?               -> bool
{: since=""}
### def any? {|item| ... } -> bool
{: since=""}
### def any?(pattern)      -> bool
{: since=""}

すべての要素が偽である場合に false を返します。
真である要素があれば、ただちに true を返します。

ブロックを伴う場合は、各要素に対してブロックを評価し、すべての結果が偽である場合に false を返します。ブロックが真を返した時点で、ただちに true を返します。

要素の数が 0 である配列に対しては false を返します。

- **param** `pattern` -- ブロックの代わりに各要素に対して pattern === item を評価します。

```ruby title="例"
p [1, 2, 3].any? {|v| v > 3 }   # => false
p [1, 2, 3].any? {|v| v > 1 }   # => true
p [].any? {|v| v > 0 }          # => false
p %w[ant bear cat].any?(/d/)    # => false
p [nil, true, 99].any?(Integer) # => true
p [nil, true, 99].any?          # => true
p [].any?                       # => false
```

- **SEE** [Enumerable#any?](../../../method/Enumerable/i/any=3f.md)
