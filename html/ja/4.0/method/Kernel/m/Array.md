# Kernel?.Array

### module_function def Array(arg) -> Array

引数を配列([Array](../../../class/Array.md))に変換した結果を返します。

arg.to_ary と arg.to_a をこの順に呼び出して、返ってきた配列を変換結果とします。

arg に to_ary, to_a のいずれのメソッドも定義されていない場合は一要素の配列 [arg] を返します。

- **param** `arg` -- 変換対象のオブジェクトです。
- **raise** `TypeError` -- to_ary, to_a の返り値が配列でなければ発生します

```ruby title="例"
p Array({:it => 3}) #=> [[:it, 3]]
p Array(nil) #=> []
p Array("fefe") #=> ["fefe"]
```

- **SEE** [Object#to_a](../../../method/Object/i/to_a.md),[Object#to_ary](../../../method/Object/i/to_ary.md),[Array](../../../class/Array.md)
