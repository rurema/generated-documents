# Enumerator#rewind

### def rewind -> self

列挙状態を巻き戻します。

next メソッドによる外部列挙の状態を最初まで巻き戻します。 self を返します。

内包するオブジェクトが rewind メソッドを持つとき(respond_to?(:rewind) に真を返すとき) は、その rewind メソッドを呼び出します。

- **SEE** [Enumerator#next](../../../method/Enumerator/i/next.md)

```ruby title="例"
str = "xyz"
enum = str.each_byte

p enum.next # => 120
p enum.next # => 121
enum.rewind
p enum.next # => 120
```
