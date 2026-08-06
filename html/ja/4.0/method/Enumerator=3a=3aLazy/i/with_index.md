# Enumerator::Lazy#with_index

### def with_index(offset = 0) {|(*args), idx| ... } -> Enumerator::Lazy
{: since="2.0.0"}
### def with_index(offset = 0) -> Enumerator::Lazy
{: since="2.0.0"}

生成時のパラメータに従って、要素にインデックスを添えて繰り返します。
インデックスは offset から始まります。

ブロックを指定した場合の戻り値は生成時に指定したレシーバ自身です。

```ruby
("a"..).lazy.with_index(1) { |it, index| puts "#{index}:#{it}" }.take(3).force
# => 1:a
#    2:b
#    3:c
```

- **SEE** [Enumerator#with_index](../../../method/Enumerator/i/with_index.md)
