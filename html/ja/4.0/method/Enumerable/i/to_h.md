# Enumerable#to_h

### def to_h(*args) -> Hash
### def to_h(*args) { ... } -> Hash

self を [key, value] のペアの配列として解析した結果を [Hash](../../../class/Hash.md) にして返します。

- **param** `args` -- each の呼び出し時に引数として渡されます。

```ruby title="例"
p %i[hello world].each_with_index.to_h # => {:hello => 0, :world => 1}
```

ブロックを指定すると各要素でブロックを呼び出し、その結果をペアとして使います。

```ruby title="ブロック付きの例"
p (1..5).to_h {|x| [x, x ** 2]} # => {1=>1, 2=>4, 3=>9, 4=>16, 5=>25}
```
