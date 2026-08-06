# Integer.try_convert

### def Integer.try_convert(obj) -> Integer | nil

`obj` を `Integer` に変換しようと試みます。変換には [Object#to_int](../../../method/Object/i/to_int.md)
メソッドが使われます。

`Integer` ならそのまま `obj` を返します。
そうでなければ `obj.to_int` の結果を返すか、`nil` が返されます。

- **param** `obj` --   変換する任意のオブジェクト
- **return** --      `Integer` または `nil`
- **raise** `TypeError` -- `to_int` が `Integer` を返さなかった場合に発生します。

```ruby title="例"
p Integer.try_convert(1)  # => 1
p Integer.try_convert(1.25) # => 1
p Integer.try_convert([]) # => nil
```
