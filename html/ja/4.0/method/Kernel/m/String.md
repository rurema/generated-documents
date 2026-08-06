# Kernel?.String

### module_function def String(arg) -> String

引数を文字列([String](../../../class/String.md))に変換した結果を返します。

arg.to_s を呼び出して文字列に変換します。
arg が文字列の場合、何もせず arg を返します。

- **param** `arg` -- 変換対象のオブジェクトです。
- **raise** `TypeError` -- to_s の返り値が文字列でなければ発生します。

```ruby title="例"
class Foo
 def to_s
   "hogehoge"
 end
end

arg = Foo.new
p String(arg) #=> "hogehoge"
```

- **SEE** [Object#to_s](../../../method/Object/i/to_s.md),[String](../../../class/String.md)
