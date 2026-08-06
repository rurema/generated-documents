# Array#one?

### def one?                -> bool
{: since=""}
### def one?{|obj| ... }    -> bool
{: since=""}
### def one?(pattern)       -> bool
{: since=""}

ブロックを指定しない場合は、 配列の要素のうちちょうど一つだけが真であれば、真を返します。
そうでなければ偽を返します。

ブロックを指定した場合は、配列の要素をブロックで評価した結果、一つの要素だけが真であれば真を返します。
そうでなければ偽を返します。

- **param** `pattern` -- ブロックの代わりに各要素に対して pattern === item を評価します。

```ruby title="例"
p %w{ant bear cat}.one? {|word| word.length == 4} # => true
p %w{ant bear cat}.one? {|word| word.length > 4}  # => false
p %w{ant bear cat}.one?(/t/)                      # => false
p [ nil, true, 99 ].one?                          # => false
p [ nil, true, false ].one?                       # => true
p [ nil, true, 99 ].one?(Integer)                 # => true
p [].one?                                         # => false
```

- **SEE** [Enumerable#one?](../../../method/Enumerable/i/one=3f.md)
